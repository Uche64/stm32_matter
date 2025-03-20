#ifndef  HUMIDTIY_MEASUREMENT_MANAGER_H
#define  HUMIDITY_MEASUREMENT_MANAGER_H

#include <app/AttributeAccessInterface.h>
#include <app-common/zap-generated/cluster-objects.h>
#include <lib/core/CHIPError.h>

namespace chip {
namespace app {
namespace Clusters {
namespace RelativeHumidityMeasurement {

class HumidityMeasurementManager : public AttributeAccessInterface
{
public:
    HumidityMeasurementManager(EndpointId endpoint);
    static void Init(EndpointId endpoint);

    CHIP_ERROR Read(const ConcreteReadAttributePath & aPath, AttributeValueEncoder & aEncoder) override;
    void SetHumidity(int16_t humidity);

private:
    EndpointId mEndpointId;
    DataModel::Nullable<int16_t> mCurrentHumidity;
};

} // namespace RelativeHumidityMeasurement
} // namespace Clusters
} // namespace app
} // namespace chip
#endif // TEMPERATURE_MEASUREMENT_MANAGER_H
