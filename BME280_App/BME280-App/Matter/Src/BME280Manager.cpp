#include "BME280Manager.h"
#include "main.h"  // Include your MCU-specific header
#include "cmsis_os.h"
#include <app-common/zap-generated/attributes/Accessors.h>
#include <lib/support/logging/CHIPLogging.h>

BME280Manager BME280Manager::sDevice;

CHIP_ERROR BME280Manager::Init()
{
    mLEDState = LED_OFF;
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET); // Ensure LED is off initially

    // Perform BME280 Sensor Reset
    uint8_t reset_cmd = 0xB6;
    HAL_I2C_Mem_Write(&hi2c1, BME280_I2C_ADDR, 0xE0, 1, &reset_cmd, 1, 100);
    HAL_Delay(10); // Allow reset to complete

    // Configure BME280 with recommended settings
    uint8_t config_data[2] = {0x27, 0xA0};  // Normal mode, 1x oversampling
    if (HAL_I2C_Mem_Write(&hi2c1, BME280_I2C_ADDR, 0xF4, 1, config_data, 2, 100) != HAL_OK)
    {
        ChipLogError(NotSpecified, "BME280 Initialization Failed!");
        return CHIP_ERROR_INTERNAL;
    }

    ChipLogProgress(NotSpecified, "BME280 Initialized Successfully");
    return CHIP_NO_ERROR;
}


bool BME280Manager::IsLEDOn()
{
    return (mLEDState == LED_ON);
}

bool BME280Manager::InitiateAction(Action_t aAction)
{
    if (aAction == TURN_ON_LED)
    {
        SetLED(true);
    }
    else if (aAction == TURN_OFF_LED)
    {
        SetLED(false);
    }
    else
    {
        return false;
    }

    return true;
}

void BME280Manager::SetLED(bool aOn)
{
    mLEDState = aOn ? LED_ON : LED_OFF;
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, aOn ? GPIO_PIN_SET : GPIO_PIN_RESET);
    ChipLogProgress(NotSpecified, "LED State: %s", aOn ? "ON" : "OFF");

    if (mActionInitiated_CB)
    {
        mActionInitiated_CB(aOn ? TURN_ON_LED : TURN_OFF_LED);
    }
    else
    {
        ChipLogError(NotSpecified, "LED Callback is NULL, action not reported");
    }
}


void BME280Manager::ReadSensorData(float &temperature, float &pressure, float &humidity)
{
    if (osMessageQueueGet(TemperatureHandle, &temperature, NULL, 0) != osOK)
    {
        ChipLogError(NotSpecified, "Temperature data unavailable, using last known value");
    }
    if (osMessageQueueGet(PressureHandle, &pressure, NULL, 0) != osOK)
    {
        ChipLogError(NotSpecified, "Pressure data unavailable, using last known value");
    }
    if (osMessageQueueGet(HumidityHandle, &humidity, NULL, 0) != osOK)
    {
        ChipLogError(NotSpecified, "Humidity data unavailable, using last known value");
    }
}


void BME280Manager::UpdateMatterClusters(float temperature, float pressure, float humidity)
{
    ChipLogProgress(NotSpecified, "Updating Matter Attributes");

    auto status = app::Clusters::TemperatureMeasurement::Attributes::MeasuredValue::Set(
        1, static_cast<int16_t>(temperature * 100));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Temperature Cluster");
    }

    status = app::Clusters::PressureMeasurement::Attributes::MeasuredValue::Set(
        1, static_cast<int16_t>(pressure * 10));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Pressure Cluster");
    }

    status = app::Clusters::RelativeHumidityMeasurement::Attributes::MeasuredValue::Set(
        1, static_cast<int16_t>(humidity * 100));
    if (status != EMBER_ZCL_STATUS_SUCCESS)
    {
        ChipLogError(NotSpecified, "Failed to update Humidity Cluster");
    }
}

