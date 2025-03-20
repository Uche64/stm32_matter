#pragma once

// Existing Plugin Callbacks
void MatterAccessControlPluginServerInitCallback();
void MatterAdministratorCommissioningPluginServerInitCallback();
void MatterBasicInformationPluginServerInitCallback();
void MatterDescriptorPluginServerInitCallback();
void MatterDiagnosticLogsPluginServerInitCallback();
void MatterFixedLabelPluginServerInitCallback();
void MatterGeneralCommissioningPluginServerInitCallback();
void MatterGeneralDiagnosticsPluginServerInitCallback();
void MatterGroupKeyManagementPluginServerInitCallback();
void MatterGroupsPluginServerInitCallback();
void MatterIdentifyPluginServerInitCallback();
void MatterLevelControlPluginServerInitCallback();
void MatterLocalizationConfigurationPluginServerInitCallback();
void MatterNetworkCommissioningPluginServerInitCallback();
void MatterOnOffPluginServerInitCallback();
void MatterOperationalCredentialsPluginServerInitCallback();
void MatterOtaSoftwareUpdateRequestorPluginServerInitCallback();
void MatterScenesManagementPluginServerInitCallback();
void MatterSoftwareDiagnosticsPluginServerInitCallback();
void MatterThreadNetworkDiagnosticsPluginServerInitCallback();
void MatterTimeFormatLocalizationPluginServerInitCallback();
void MatterUserLabelPluginServerInitCallback();

// Added for BME280 Sensor Clusters
void MatterTemperatureMeasurementPluginServerInitCallback();
void MatterPressureMeasurementPluginServerInitCallback();
void MatterRelativeHumidityMeasurementPluginServerInitCallback();

#define MATTER_PLUGINS_INIT \
    MatterAccessControlPluginServerInitCallback(); \
    MatterAdministratorCommissioningPluginServerInitCallback(); \
    MatterBasicInformationPluginServerInitCallback(); \
    MatterDescriptorPluginServerInitCallback(); \
    MatterDiagnosticLogsPluginServerInitCallback(); \
    MatterFixedLabelPluginServerInitCallback(); \
    MatterGeneralCommissioningPluginServerInitCallback(); \
    MatterGeneralDiagnosticsPluginServerInitCallback(); \
    MatterGroupKeyManagementPluginServerInitCallback(); \
    MatterGroupsPluginServerInitCallback(); \
    MatterIdentifyPluginServerInitCallback(); \
    MatterLevelControlPluginServerInitCallback(); \
    MatterLocalizationConfigurationPluginServerInitCallback(); \
    MatterNetworkCommissioningPluginServerInitCallback(); \
    MatterOnOffPluginServerInitCallback(); \
    MatterOperationalCredentialsPluginServerInitCallback(); \
    MatterOtaSoftwareUpdateRequestorPluginServerInitCallback(); \
    MatterScenesManagementPluginServerInitCallback(); \
    MatterSoftwareDiagnosticsPluginServerInitCallback(); \
    MatterThreadNetworkDiagnosticsPluginServerInitCallback(); \
    MatterTimeFormatLocalizationPluginServerInitCallback(); \
    MatterUserLabelPluginServerInitCallback(); \
    \
    /*Initialize BME280 Sensor Clusters */ \
    MatterTemperatureMeasurementPluginServerInitCallback(); \
    MatterPressureMeasurementPluginServerInitCallback(); \
    MatterRelativeHumidityMeasurementPluginServerInitCallback();
