/*
 * pressure-measurement-server.h
 *
 *  Created on: Mar 10, 2025
 *      Author: Windows
 */

#ifndef PRESSURE_MEASUREMENT_SERVER_H_
#define PRESSURE_MEASUREMENT_SERVER_H_


#include <app/AttributeAccessInterface.h>
#include <app-common/zap-generated/cluster-objects.h>
#include <lib/core/CHIPError.h>

namespace chip {
namespace app {
namespace Clusters {
namespace PressureMeasurement {

class PressureMeasurementManager : public AttributeAccessInterface
{
public:
    PressureMeasurementManager(EndpointId endpoint);
    static void Init(EndpointId endpoint);

    CHIP_ERROR Read(const ConcreteReadAttributePath & aPath, AttributeValueEncoder & aEncoder) override;
    void SetPressure(int16_t pressure);

private:
    EndpointId mEndpointId;
    DataModel::Nullable<int16_t> mCurrentPressure;
};

} // namespace PressureMeasurement
} // namespace Clusters
} // namespace app
} // namespace chip


#endif /* MIDDLEWARES_CONNECTEDHOMEIP_SRC_APP_CLUSTERS_PRESSURE_MEASUREMENT_SERVER_PRESSURE_MEASUREMENT_SERVER_H_ */
