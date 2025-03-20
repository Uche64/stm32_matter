#include <app-common/zap-generated/callback.h>

using namespace chip;

// Temperature Measurement Cluster Init Callback
void __attribute__((weak)) emberAfTemperatureMeasurementClusterInitCallback(EndpointId endpoint)
{
    // Initialize Temperature Measurement Cluster
    (void) endpoint;
}

// Pressure Measurement Cluster Init Callback
void __attribute__((weak)) emberAfPressureMeasurementClusterInitCallback(EndpointId endpoint)
{
    // Initialize Pressure Measurement Cluster
    (void) endpoint;
}

// Relative Humidity Measurement Cluster Init Callback
void __attribute__((weak)) emberAfRelativeHumidityMeasurementClusterInitCallback(EndpointId endpoint)
{
    // Initialize Humidity Measurement Cluster
    (void) endpoint;
}

// On/Off Cluster Init Callback (For LED Control)
void __attribute__((weak)) emberAfOnOffClusterInitCallback(EndpointId endpoint)
{
    // Initialize On/Off Cluster
    (void) endpoint;
}

// Other Clusters (If needed, uncomment and customize them)
// void __attribute__((weak)) emberAfIdentifyClusterInitCallback(EndpointId endpoint) { (void) endpoint; }
// void __attribute__((weak)) emberAfLevelControlClusterInitCallback(EndpointId endpoint) { (void) endpoint; }

