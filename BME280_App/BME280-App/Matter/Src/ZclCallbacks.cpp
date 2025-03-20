/* USER CODE BEGIN Header */
/**
 *******************************************************************************
 * File Name          : ZclCallback.c
 * Description        : Cluster output source file for Matter (LED + BME280).
 *******************************************************************************
 * @attention
 *
 * Copyright (c) 2019-2021 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 *******************************************************************************
 */
/* USER CODE END Header */

#include "AppTask.h"
#include "BME280Manager.h"

#include <app-common/zap-generated/ids/Attributes.h>
#include <app-common/zap-generated/ids/Clusters.h>
#include <app/ConcreteAttributePath.h>
#include <lib/support/logging/CHIPLogging.h>

using namespace chip;
using namespace chip::app::Clusters;

// Define Temperature, Pressure, and Humidity attributes
#define SENSOR_ENDPOINT_ID 1

// Message queues for sensor data
extern osMessageQueueId_t TemperatureHandle;
extern osMessageQueueId_t PressureHandle;
extern osMessageQueueId_t HumidityHandle;

void MatterPostAttributeChangeCallback(const chip::app::ConcreteAttributePath &attributePath,
                                       uint8_t type, uint16_t size, uint8_t *value)
{
    ClusterId clusterId = attributePath.mClusterId;
    AttributeId attributeId = attributePath.mAttributeId;

    // Handle OnOff Cluster (LED control)
    if (clusterId == OnOff::Id && attributeId == OnOff::Attributes::OnOff::Id) {
        BME280Mgr().InitiateAction(
                *value ? BME280Manager::ON_ACTION : BME280Manager::OFF_ACTION, 0, size, value);
        ChipLogProgress(Zcl, "LED state updated via Matter: %s", *value ? "ON" : "OFF");
    }

    // Handle Level Control Cluster (LED brightness)
    else if (clusterId == LevelControl::Id && attributeId == LevelControl::Attributes::CurrentLevel::Id) {
        uint8_t brightness = *value;
        ChipLogProgress(Zcl, "Received LED brightness update via Matter: %d", brightness);
        // Optional: Implement brightness control in BME280Manager if needed
    }

    // Handle Environmental Sensing Cluster (Temperature)
    else if (clusterId == TemperatureMeasurement::Id && attributeId == TemperatureMeasurement::Attributes::MeasuredValue::Id) {
        float temperature;
        memcpy(&temperature, value, sizeof(float));
        osMessageQueuePut(TemperatureHandle, &temperature, 0, osWaitForever);
        ChipLogProgress(Zcl, "Temperature updated via Matter: %.2f°C", temperature);
    }

    // Handle Pressure Cluster
    else if (clusterId == PressureMeasurement::Id && attributeId == PressureMeasurement::Attributes::MeasuredValue::Id) {
        float pressure;
        memcpy(&pressure, value, sizeof(float));
        osMessageQueuePut(PressureHandle, &pressure, 0, osWaitForever);
        ChipLogProgress(Zcl, "Pressure updated via Matter: %.2f hPa", pressure);
    }

    // Handle Humidity Cluster
    else if (clusterId == RelativeHumidityMeasurement::Id && attributeId == RelativeHumidityMeasurement::Attributes::MeasuredValue::Id) {
        float humidity;
        memcpy(&humidity, value, sizeof(float));
        osMessageQueuePut(HumidityHandle, &humidity, 0, osWaitForever);
        ChipLogProgress(Zcl, "Humidity updated via Matter: %.2f%%", humidity);
    }

    else {
        ChipLogError(Zcl, "Unsupported Matter Cluster: 0x%08lx, Attribute: 0x%08lx", static_cast<uint32_t>(clusterId), static_cast<uint32_t>(attributeId));
    }

}

void emberAfOnOffClusterInitCallback(EndpointId endpoint) {
    ChipLogProgress(Zcl, "OnOff Cluster Initialized for Endpoint %d", endpoint);
}

void emberAfTemperatureMeasurementClusterInitCallback(EndpointId endpoint) {
    ChipLogProgress(Zcl, "Temperature Measurement Cluster Initialized for Endpoint %d", endpoint);
}

void emberAfPressureMeasurementClusterInitCallback(EndpointId endpoint) {
    ChipLogProgress(Zcl, "Pressure Measurement Cluster Initialized for Endpoint %d", endpoint);
}

void emberAfRelativeHumidityMeasurementClusterInitCallback(EndpointId endpoint) {
    ChipLogProgress(Zcl, "Humidity Measurement Cluster Initialized for Endpoint %d", endpoint);
}
