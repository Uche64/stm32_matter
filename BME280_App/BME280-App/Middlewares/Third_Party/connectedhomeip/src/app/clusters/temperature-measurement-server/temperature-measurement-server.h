/*
 * humidity-measurement-server.h
 *
 *  Created on: Mar 10, 2025
 *      Author: Windows
 */

#ifndef TEMPERATURE_MEASUREMENT_SERVER_H_
#define TEMPERATURE_MEASUREMENT_SERVER_H_

#include <app/AttributeAccessInterface.h>
#include <app-common/zap-generated/cluster-objects.h>
#include <lib/core/CHIPError.h>

namespace chip {
namespace app {
namespace Clusters {
namespace TemperatureMeasurement {

class TemperatureMeasurementManager : public AttributeAccessInterface
{
public:
    TemperatureMeasurementManager(EndpointId endpoint);
    static void Init(EndpointId endpoint);

    CHIP_ERROR Read(const ConcreteReadAttributePath & aPath, AttributeValueEncoder & aEncoder) override;
    void SetTemperature(int16_t temperature);
    static TemperatureMeasurementManager instance(TEMP_SENSOR_ENDPOINT_ID);
    return instance;

private:
    TemperatureMeasurementManager(EndpointId endpoint);
    EndpointId mEndpointId;
    DataModel::Nullable<int16_t> mCurrentTemperature;
};

} // namespace TemperatureMeasurement
} // namespace Clusters
} // namespace app
} // namespace chip




#endif /* MIDDLEWARES_CONNECTEDHOMEIP_SRC_APP_CLUSTERS_TEMPERATURE_MEASUREMENT_SERVER_TEMPERATURE_MEASUREMENT_SERVER_H_ */
