/*
 *
 *    Copyright (c) 2020 Project CHIP Authors
 *    All rights reserved.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

/*STM32 includes*/
#include "app_common.h"
#include "app_thread.h"
#include "stm32_lpm.h"
#include "dbg_trace.h"
#include "cmsis_os.h"
#include "AppEvent.h"
#include "AppTask.h"
#include "flash_wb.h"

#include "BME280Manager.h"
#include "bme280.h"

#ifdef USE_STM32WB5M_DK
#if (CFG_LCD_SUPPORTED == 1)
#include "stm32wb5mm_dk_lcd.h"
#include "stm32_lcd.h"
#include "ssd1315.h"
#endif /* (CFG_LCD_SUPPORTED == 1) */
#endif /* USE_STM32WB5M_DK */

#if (OTA_SUPPORT == 1)
#include "ota.h"
#endif /* (OTA_SUPPORT == 1) */

#if HIGHWATERMARK
#include "memory_buffer_alloc.h"
#endif

/*Matter includes*/
#include <DeviceInfoProviderImpl.h>
#include <app/server/OnboardingCodesUtil.h>
#include <app-common/zap-generated/attribute-type.h>
#include <app-common/zap-generated/attributes/Accessors.h>
#include <app/server/Dnssd.h>
#include <app/server/Server.h>
#include <app/util/attribute-storage.h>
#include <credentials/DeviceAttestationCredsProvider.h>
#include <inet/EndPointStateOpenThread.h>
#include <setup_payload/QRCodeSetupPayloadGenerator.h>
#include <setup_payload/SetupPayload.h>
#include <platform/CHIPDeviceLayer.h>

#if CHIP_ENABLE_OPENTHREAD
#include <platform/OpenThread/OpenThreadUtils.h>
#include <platform/ThreadStackManager.h>
#endif

using namespace ::chip;
using namespace ::chip::app;
using namespace chip::TLV;
using namespace chip::Credentials;
using namespace chip::DeviceLayer;
using namespace ::chip::Platform;
using namespace ::chip::Credentials;
using namespace ::chip::app::Clusters;
using chip::DeviceLayer::PersistedStorage::KeyValueStoreMgr;

AppTask AppTask::sAppTask;
BME280Manager BME280Mgr;

#ifdef USE_STM32WB5M_DK
#define APP_FUNCTION_BUTTON1 BUTTON_USER1
#define APP_FUNCTION_BUTTON2 BUTTON_USER2
#endif /* USE_STM32WB5M_DK */

#ifdef USE_STM32WBXX_NUCLEO
#define APP_FUNCTION_BUTTON1 BUTTON_SW1
#define APP_FUNCTION_BUTTON2 BUTTON_SW2
#endif /* USE_STM32WBXX_NUCLEO */

// #define STM32ThreadDataSet "STM32DataSet"
#define APP_EVENT_QUEUE_SIZE 10
#define NVM_TIMEOUT 1000  // timer to handle PB to save data in nvm or do a factory reset
#define STM32_LIGHT_ENDPOINT_ID 1

static QueueHandle_t sAppEventQueue;
static TimerHandle_t sPushButtonTimeoutTimer;

chip::DeviceLayer::DeviceInfoProviderImpl gExampleDeviceInfoProvider;

/* RTOS Queue Handles */
extern osMessageQueueId_t TemperatureHandle;
extern osMessageQueueId_t PressureHandle;
extern osMessageQueueId_t HumidityHandle;


const osThreadAttr_t AppTask_attr = { .name = APPTASK_NAME, .attr_bits =
APP_ATTR_BITS, .cb_mem = APP_CB_MEM, .cb_size = APP_CB_SIZE, .stack_mem =
APP_STACK_MEM, .stack_size = APP_STACK_SIZE, .priority =
APP_PRIORITY };

static bool sIsThreadProvisioned = false;
static bool sIsThreadEnabled = false;
static bool sHaveBLEConnections = false;
static bool sFabricNeedSaved = false;
static bool sFailCommissioning = false;
static bool sHaveFabric = false;
static uint8_t NvmTimerCpt = 0;
static uint8_t NvmButtonStateCpt = 0;

chip::DeviceLayer::DeviceInfoProviderImpl gExampleDeviceInfoProvider;


/**
 * @brief Starts the AppTask
 */
CHIP_ERROR AppTask::StartAppTask() {
    sAppEventQueue = xQueueCreate(APP_EVENT_QUEUE_SIZE, sizeof(AppEvent));
    if (sAppEventQueue == NULL) {
        ChipLogError(NotSpecified, "Failed to allocate app event queue");
        return CHIP_ERROR_NO_MEMORY;
    }

    osThreadNew(AppTaskMain, NULL, &AppTask_attr);
    return CHIP_NO_ERROR;
}

void LockOpenThreadTask(void) {
    chip::DeviceLayer::ThreadStackMgr().LockThreadStack();
}

void UnlockOpenThreadTask(void) {
    chip::DeviceLayer::ThreadStackMgr().UnlockThreadStack();
}


/**
 * @brief Initializes Matter and Thread communication
 */
CHIP_ERROR AppTask::Init()
{
    CHIP_ERROR err = CHIP_NO_ERROR;

    ChipLogProgress(NotSpecified, "Initializing Matter and Thread...");

    // Initialize BME280 Sensor Manager
    err = BME280Mgr.Init();
    if (err != CHIP_NO_ERROR)
    {
        ChipLogError(NotSpecified, "BME280 Manager initialization failed.");
        return err;
    }

    // Initialize Thread
    ThreadStackMgr().InitThreadStack();
    ConnectivityMgr().SetThreadDeviceType(ConnectivityManager::kThreadDeviceType_Router);

    return err;
}


/**
 * @brief Initializes Matter Stack
 */
CHIP_ERROR AppTask::InitMatter() {
    CHIP_ERROR err = CHIP_NO_ERROR;

    ChipLogProgress(NotSpecified, "Initializing Matter Stack...");

    // Initialize Matter memory
    err = chip::Platform::MemoryInit();
    if (err != CHIP_NO_ERROR) {
        ChipLogError(NotSpecified, "Memory Init failed");
        return err;
    }

    // Initialize Matter stack
    err = PlatformMgr().InitChipStack();
    if (err != CHIP_NO_ERROR) {
        ChipLogError(NotSpecified, "Chip Stack Init failed");
        return err;
    }

    // Set Matter device information
    static chip::CommonCaseDeviceServerInitParams initParams;
    (void) initParams.InitializeStaticResourcesBeforeServerInit();
    SetDeviceInstanceInfoProvider(&BME280Mgr);
    SetDeviceAttestationCredentialsProvider(&BME280Mgr);

    chip::Server::GetInstance().Init(initParams);

    // Start Matter Event Loop
    err = PlatformMgr().StartEventLoopTask();
    if (err != CHIP_NO_ERROR) {
        ChipLogError(NotSpecified, "PlatformMgr().StartEventLoopTask() failed");
    }

    return err;
}



/**
 * @brief Main task loop for Matter and sensor updates
 */
void AppTask::AppTaskMain(void *pvParameter)
{
    AppEvent event;
    float temperature, pressure, humidity;

    CHIP_ERROR err = sAppTask.Init();
    if (err != CHIP_NO_ERROR)
    {
        ChipLogError(NotSpecified, "App task init failed.");
        return;
    }

    ChipLogProgress(NotSpecified, "App Task started");

    while (true)
    {
        // Read sensor data only if available
        if (osMessageQueueGet(TemperatureHandle, &temperature, NULL, 0) == osOK &&
            osMessageQueueGet(PressureHandle, &pressure, NULL, 0) == osOK &&
            osMessageQueueGet(HumidityHandle, &humidity, NULL, 0) == osOK)
        {
            // Update Matter Clusters with new sensor data
            BME280Mgr.UpdateMatterClusters(temperature, pressure, humidity);
        }

        // Process Matter events
        BaseType_t eventReceived = xQueueReceive(sAppEventQueue, &event, portMAX_DELAY);
        while (eventReceived == pdTRUE)
        {
            sAppTask.DispatchEvent(&event);
            eventReceived = xQueueReceive(sAppEventQueue, &event, 0);
        }
    }
}


/*
void AppTask::LightingActionEventHandler(AppEvent *aEvent) {
    LightingManager::Action_t action;

    if (aEvent->Type == AppEvent::kEventType_Button) {
        // Toggle light
        if (LightingMgr().IsTurnedOn()) {
            action = LightingManager::OFF_ACTION;
        } else {
            action = LightingManager::ON_ACTION;
        }

        sAppTask.mSyncClusterToButtonAction = true;
        LightingMgr().InitiateAction(action, 0, 0, 0);
    }
    if (aEvent->Type == AppEvent::kEventType_Level && aEvent->ButtonEvent.Action != 0) {
        // Toggle Dimming of light between 2 fixed levels
        uint8_t val = 0x0;
        val = LightingMgr().GetLevel() == 0x7f ? 0x1 : 0x7f;
        action = LightingManager::LEVEL_ACTION;

        sAppTask.mSyncClusterToButtonAction = true;
        LightingMgr().InitiateAction(action, 0, 1, &val);
    }
}*/

/**
 * @brief Event handler for button presses
 */
void AppTask::ButtonEventHandler(Push_Button_st *Button)
{
    if (Button == nullptr)
    {
        ChipLogError(NotSpecified, "Null Button Event Received");
        return;
    }

    // Ensure valid button index
    if (Button->Pushed_Button != APP_FUNCTION_BUTTON1 && Button->Pushed_Button != APP_FUNCTION_BUTTON2)
    {
        ChipLogError(NotSpecified, "Invalid Button Index: %d", Button->Pushed_Button);
        return;
    }

    AppEvent button_event = {};
    button_event.Type = AppEvent::kEventType_Button;
    button_event.ButtonEvent.ButtonIdx = Button->Pushed_Button;
    button_event.ButtonEvent.Action = Button->State;
    button_event.Handler = ToggleLED;

    sAppTask.PostEvent(&button_event);
}


/*void AppTask::TimerEventHandler(TimerHandle_t xTimer) {

    NvmTimerCpt++;
    if (BSP_PB_GetState(APP_FUNCTION_BUTTON1) == 0) {
        NvmButtonStateCpt++;
    }
    if (NvmTimerCpt >= 10) {
        xTimerStop(sPushButtonTimeoutTimer, 0);
        if (NvmButtonStateCpt >= 9) {
            AppEvent event;
            event.Type = AppEvent::kEventType_Timer;
            event.Handler = UpdateNvmEventHandler;
            sAppTask.mFunction = kFunction_FactoryReset;
            sAppTask.PostEvent(&event);
        }
    } else if ((NvmTimerCpt > NvmButtonStateCpt) && (NvmTimerCpt <= 2)) {
        xTimerStop(sPushButtonTimeoutTimer, 0);
        if (sHaveFabric == true)
        {
            AppEvent event;
            event.Type = AppEvent::kEventType_Timer;
            event.Handler = UpdateNvmEventHandler;  
            sAppTask.mFunction = kFunction_SaveNvm;
            sAppTask.PostEvent(&event);                  
        }
    }
}*/

void AppTask::FunctionHandler(AppEvent *aEvent) {
    if (aEvent->Type == AppEvent::kEventType_Button) {
        AppTask::ToggleLED(aEvent);
    }
}


/*void AppTask::ActionCompleted(LightingManager::Action_t aAction) {
    // Placeholder for light action completed
    if (aAction == LightingManager::ON_ACTION) {
        APP_DBG("Light action on completed");
    } else if (aAction == LightingManager::OFF_ACTION) {
        APP_DBG("Light action off completed");
    }
    if (sAppTask.mSyncClusterToButtonAction) {
        sAppTask.UpdateClusterState();
        sAppTask.mSyncClusterToButtonAction = false;
    }
}*/

/**
 * @brief Posts an event to the event queue
 */
void AppTask::PostEvent(const AppEvent *aEvent) {
    if (sAppEventQueue != NULL) {
        if (!xQueueSend(sAppEventQueue, aEvent, 1)) {
            ChipLogError(NotSpecified, "Failed to post event to app task event queue");
        }
    } else {
        ChipLogError(NotSpecified, "Event Queue is NULL should never happen");
    }
}

/**
 * @brief Dispatches incoming events
 */
void AppTask::DispatchEvent(AppEvent *aEvent) {
    if (aEvent->Handler) {
        aEvent->Handler(aEvent);
    } else {
        ChipLogError(NotSpecified, "Event received with no handler. Dropping event.");
    }
}


/**
 * @brief Updates cluster state
 */
void AppTask::UpdateClusterState()
{
    ChipLogProgress(NotSpecified, "Updating Matter Cluster State");

    float temperature, pressure, humidity;

    // Get latest sensor values
    if (osMessageQueueGet(TemperatureHandle, &temperature, NULL, 0) != osOK ||
        osMessageQueueGet(PressureHandle, &pressure, NULL, 0) != osOK ||
        osMessageQueueGet(HumidityHandle, &humidity, NULL, 0) != osOK)
    {
        ChipLogError(NotSpecified, "Failed to get sensor data from queue");
        return;
    }

    // Update Temperature Cluster
    auto status = Clusters::TemperatureMeasurement::Attributes::MeasuredValue::Set(
        STM32_LIGHT_ENDPOINT_ID, static_cast<int16_t>(temperature * 100));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Temperature Cluster");
    }

    // Update Pressure Cluster
    status = Clusters::PressureMeasurement::Attributes::MeasuredValue::Set(
        STM32_LIGHT_ENDPOINT_ID, static_cast<int16_t>(pressure * 10));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Pressure Cluster");
    }

    // Update Humidity Cluster
    status = Clusters::RelativeHumidityMeasurement::Attributes::MeasuredValue::Set(
        STM32_LIGHT_ENDPOINT_ID, static_cast<int16_t>(humidity * 100));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Humidity Cluster");
    }
}



/*void AppTask::DelayNvmHandler(void) {
#ifdef USE_STM32WB5M_DK    
    AppEvent event;
    event.Type = AppEvent::kEventType_Timer;
    event.Handler = UpdateNvmEventHandler;
    sAppTask.mFunction = kFunction_SaveNvm;
    sAppTask.PostEvent(&event);
#endif /* USE_STM32WB5M_DK *
}*/

#ifdef USE_STM32WB5M_DK
#if (CFG_LCD_SUPPORTED == 1)
void AppTask::UpdateLCD(void) {
    if (sIsThreadProvisioned && sIsThreadEnabled) {
        UTIL_LCD_DisplayStringAt(0, LINE(4), (uint8_t*) "Network Joined", LEFT_MODE);
    } else if ((sIsThreadProvisioned == false) || (sIsThreadEnabled == false)) {
        UTIL_LCD_ClearStringLine(4);
    }
    if (sHaveBLEConnections) {
        UTIL_LCD_ClearStringLine(1);
        BSP_LCD_Refresh(0);
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*) "BLE Connected", LEFT_MODE);
    }
    if (sHaveFabric) {
        UTIL_LCD_ClearStringLine(1);
        BSP_LCD_Refresh(0);
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*) "Fabric Created", LEFT_MODE);
    }
    if (sFailCommissioning == true) {
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*) "", LEFT_MODE);
        BSP_LCD_Refresh(0);
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*) "Fabric Failed", LEFT_MODE);
    }
    BSP_LCD_Refresh(0);
}
#else
void AppTask::UpdateLCD(void) {
#if (CFG_LCD_SUPPORTED == 1)
    UTIL_LCD_Clear(UTIL_LCD_COLOR_BLACK);

    // Display BLE and Thread network status
    if (sIsThreadProvisioned && sIsThreadEnabled) {
        UTIL_LCD_DisplayStringAt(0, LINE(0), (uint8_t*)"Thread: Joined", LEFT_MODE);
    } else {
        UTIL_LCD_DisplayStringAt(0, LINE(0), (uint8_t*)"Thread: Not Joined", LEFT_MODE);
    }

    if (sHaveBLEConnections) {
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*)"BLE: Connected", LEFT_MODE);
    } else {
        UTIL_LCD_DisplayStringAt(0, LINE(1), (uint8_t*)"BLE: Disconnected", LEFT_MODE);
    }

    if (sHaveFabric) {
        UTIL_LCD_DisplayStringAt(0, LINE(2), (uint8_t*)"Fabric Found", LEFT_MODE);
    } else {
        UTIL_LCD_DisplayStringAt(0, LINE(2), (uint8_t*)"Fabric Not Found", LEFT_MODE);
    }

    // Display Sensor Readings
    char sensorMessage[30];
    float temp, pressure, humidity;

    // Read from the message queue
    if (osMessageQueueGet(TemperatureHandle, &temp, NULL, 0) == osOK) {
        snprintf(sensorMessage, sizeof(sensorMessage), "Temp: %.2f C", temp);
        UTIL_LCD_DisplayStringAt(0, LINE(3), (uint8_t*) sensorMessage, LEFT_MODE);
    }
    if (osMessageQueueGet(PressureHandle, &pressure, NULL, 0) == osOK) {
        snprintf(sensorMessage, sizeof(sensorMessage), "Pressure: %.2f hPa", pressure);
        UTIL_LCD_DisplayStringAt(0, LINE(4), (uint8_t*) sensorMessage, LEFT_MODE);
    }
    if (osMessageQueueGet(HumidityHandle, &humidity, NULL, 0) == osOK) {
        snprintf(sensorMessage, sizeof(sensorMessage), "Humidity: %.2f%%", humidity);
        UTIL_LCD_DisplayStringAt(0, LINE(5), (uint8_t*) sensorMessage, LEFT_MODE);
    }

    BSP_LCD_Refresh(0);
#endif
}

#endif /* (CFG_LCD_SUPPORTED == 1) */
/**
 * @brief Toggles the LED On/Off
 */
void AppTask::ToggleLED(AppEvent *aEvent) {
    if (aEvent->Type == AppEvent::kEventType_Button) {
        if (BME280Mgr.IsLEDOn()) {
            BME280Mgr.InitiateAction(BME280Manager::TURN_OFF_LED);
        } else {
            BME280Mgr.InitiateAction(BME280Manager::TURN_ON_LED);
        }
    }
}
#endif /* USE_STM32WB5M_DK */

#ifdef USE_STM32WBXX_NUCLEO
void AppTask::UpdateLCD(void) 
{
    /* nothing for Nucleo */
}
void AppTask::UpdateLEDs(void) {
    if (sIsThreadProvisioned && sIsThreadEnabled) {
        APP_ENTRY_LedBlink(LED2, 1);
    } else if ((sIsThreadProvisioned == false) || (sIsThreadEnabled == false)) {
        APP_ENTRY_LedBlink(LED2, 0);
    }
    if (sHaveBLEConnections) {
        APP_ENTRY_LedBlink(LED1, 1);
    } else if (sHaveBLEConnections == false) {
        APP_ENTRY_LedBlink(LED1, 0);
    }
}
#endif /* USE_STM32WBXX_NUCLEO */

/*void AppTask::UpdateNvmEventHandler(AppEvent *aEvent) {
    uint8_t err = 0;

    if (sAppTask.mFunction == kFunction_SaveNvm) {
        err = NM_Dump();
        if (err == 0) {
            APP_DBG("SAVE NVM");
        } else {
            APP_DBG("Failed to SAVE NVM");
        }
    } else if (sAppTask.mFunction == kFunction_FactoryReset) {
        APP_DBG("FACTORY RESET");
        NM_ResetFactory();
    }
}*/

/**
 * @brief Handles Matter device events
 */
void AppTask::MatterEventHandler(const ChipDeviceEvent *event, intptr_t)
{
    switch (event->Type)
    {
        case DeviceEventType::kServiceProvisioningChange:
            sIsThreadProvisioned = event->ServiceProvisioningChange.IsServiceProvisioned;
            ChipLogProgress(NotSpecified, "Thread Provisioning Changed: %s", sIsThreadProvisioned ? "Provisioned" : "Not Provisioned");
            break;

        case DeviceEventType::kThreadConnectivityChange:
            sIsThreadEnabled = (event->ThreadConnectivityChange.Result == kConnectivity_Established);
            ChipLogProgress(NotSpecified, "Thread Connectivity Changed: %s", sIsThreadEnabled ? "Enabled" : "Disabled");
            break;

        case DeviceEventType::kCHIPoBLEConnectionEstablished:
            sHaveBLEConnections = true;
            ChipLogProgress(NotSpecified, "BLE Connection Established");
            break;

        case DeviceEventType::kCHIPoBLEConnectionClosed:
            sHaveBLEConnections = false;
            ChipLogProgress(NotSpecified, "BLE Connection Closed");
            break;

        case DeviceEventType::kCommissioningComplete:
            sHaveFabric = true;
            ChipLogProgress(NotSpecified, "Matter Commissioning Complete");
            break;

        default:
            ChipLogProgress(NotSpecified, "Unknown Device Event Received");
            break;
    }
}


