/*
 * humidity-measurement-server.cpp
 *
 *  Created on: Mar 3, 2025
 *      Author: Windows
 */


#include <app-common/zap-generated/cluster-objects.h>
#include <app/util/af.h>
#include <app/AttributeAccessInterface.h>
#include <protocols/interaction_model/StatusCode.h>

namespace chip {
namespace app {
namespace Clusters {
namespace RelativeHumidityMeasurement {

class Delegate
{
public:
    virtual ~Delegate() = default;
    void SetEndpointId(EndpointId aEndpoint) { mEndpointId = aEndpoint; }

    virtual DataModel::Nullable<int16_t> GetHumidity() = 0;

protected:
    EndpointId mEndpointId = 0;
};

class Instance : public AttributeAccessInterface
{
public:
    Instance(EndpointId aEndpointId, Delegate & aDelegate) :
        AttributeAccessInterface(MakeOptional(aEndpointId), Id), mDelegate(aDelegate)
    {
        mDelegate.SetEndpointId(aEndpointId);
    }

    CHIP_ERROR Read(const ConcreteReadAttributePath & aPath, AttributeValueEncoder & aEncoder) override
    {
        if (aPath.mAttributeId == Attributes::MeasuredValue::Id)
        {
            return aEncoder.Encode(mDelegate.GetHumidity());
        }
        return CHIP_NO_ERROR;
    }

private:
    Delegate & mDelegate;
};

void MatterRelativeHumidityMeasurementPluginServerInitCallback()
{
    ChipLogProgress(Zcl, "Initializing Relative Humidity Measurement Plugin Server");
}

} // namespace RelativeHumidityMeasurement
} // namespace Clusters
} // namespace app
} // namespace chip





