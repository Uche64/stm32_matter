#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <functional>
#include <lib/core/CHIPError.h>

class BME280Manager
{
public:
    enum Action_t
    {
        TURN_ON_LED = 0,
        TURN_OFF_LED,
        INVALID_ACTION
    } Action;

    enum State_t
    {
        LED_ON = 0,
        LED_OFF,
    } State;

    CHIP_ERROR Init();
    bool IsLEDOn();
    bool InitiateAction(Action_t aAction);

    void ReadSensorData(float &temperature, float &pressure, float &humidity);

    using DeviceCallback_fn = std::function<void(Action_t)>;
    void SetCallbacks(DeviceCallback_fn aActionInitiated_CB, DeviceCallback_fn aActionCompleted_CB);

private:
    friend BME280Manager & DeviceMgr(void);

    State_t mLEDState;
    DeviceCallback_fn mActionInitiated_CB;
    DeviceCallback_fn mActionCompleted_CB;

    void SetLED(bool aOn);
    void UpdateMatterClusters(float temperature, float pressure, float humidity);

    static BME280Manager sDevice;
};

inline BME280Manager & DeviceMgr(void)
{
    return BME280Manager::sDevice;
}
