################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/ota.cpp 

C_SRCS += \
../Core/Src/app_debug.c \
../Core/Src/app_entry.c \
../Core/Src/app_freertos.c \
../Core/Src/bme280.c \
../Core/Src/entropy_hardware_poll.c \
../Core/Src/flash_wb.c \
../Core/Src/freertos_port.c \
../Core/Src/hw_timerserver.c \
../Core/Src/hw_uart.c \
../Core/Src/main.c \
../Core/Src/stm32_lpm_if.c \
../Core/Src/stm32wbxx_hal_msp.c \
../Core/Src/stm32wbxx_hal_timebase_tim.c \
../Core/Src/stm32wbxx_it.c \
../Core/Src/stm_ext_flash.c \
../Core/Src/stm_logging.c \
../Core/Src/system_stm32wbxx.c 

C_DEPS += \
./Core/Src/app_debug.d \
./Core/Src/app_entry.d \
./Core/Src/app_freertos.d \
./Core/Src/bme280.d \
./Core/Src/entropy_hardware_poll.d \
./Core/Src/flash_wb.d \
./Core/Src/freertos_port.d \
./Core/Src/hw_timerserver.d \
./Core/Src/hw_uart.d \
./Core/Src/main.d \
./Core/Src/stm32_lpm_if.d \
./Core/Src/stm32wbxx_hal_msp.d \
./Core/Src/stm32wbxx_hal_timebase_tim.d \
./Core/Src/stm32wbxx_it.d \
./Core/Src/stm_ext_flash.d \
./Core/Src/stm_logging.d \
./Core/Src/system_stm32wbxx.d 

OBJS += \
./Core/Src/app_debug.o \
./Core/Src/app_entry.o \
./Core/Src/app_freertos.o \
./Core/Src/bme280.o \
./Core/Src/entropy_hardware_poll.o \
./Core/Src/flash_wb.o \
./Core/Src/freertos_port.o \
./Core/Src/hw_timerserver.o \
./Core/Src/hw_uart.o \
./Core/Src/main.o \
./Core/Src/ota.o \
./Core/Src/stm32_lpm_if.o \
./Core/Src/stm32wbxx_hal_msp.o \
./Core/Src/stm32wbxx_hal_timebase_tim.o \
./Core/Src/stm32wbxx_it.o \
./Core/Src/stm_ext_flash.o \
./Core/Src/stm_logging.o \
./Core/Src/system_stm32wbxx.o 

CPP_DEPS += \
./Core/Src/ota.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCFG_BLE -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Utilities/Fonts -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/nlio/tests -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/third_party/mbedtls/repo/include/mbedtls -I../Middlewares/Third_Party/mbedtls/include/mbedtls -I../Middlewares/Third_Party/mbedtls/include/psa -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/system -I../Drivers/CMSIS/DSP/Include -I../Drivers/CMSIS/NN/Include -I.././Core/Inc -I.././STM32_WPAN/App -I.././Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I.././Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I.././Drivers/BSP/Components/Common -I.././Drivers/BSP/Components/ssd1315 -I.././Drivers/BSP/Components/s25fl128s -I.././Drivers/BSP/STM32WB5MM-DK -I.././Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I.././Middlewares/Third_Party/connectedhomeip/zzz_generated -I.././Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I.././Middlewares/Third_Party/connectedhomeip/src/app/reporting -I.././Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I.././Middlewares/Third_Party/connectedhomeip/src/platform -I.././Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I.././Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I.././Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I.././Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I.././Middlewares/Third_Party/connectedhomeip/src/crypto -I.././Middlewares/Third_Party/connectedhomeip/src -I.././Middlewares/Third_Party/connectedhomeip/src/include -I.././Middlewares/Third_Party/connectedhomeip/src/lib -I.././Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I.././Middlewares/Third_Party/connectedhomeip/src/inet -I.././Middlewares/Third_Party/nlassert/include -I.././Middlewares/Third_Party/nlio/include -I.././Middlewares/ST/STM32_WPAN/utilities -I.././Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I.././Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I.././Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I.././Drivers/STM32WBxx_HAL_Driver/Inc -I.././Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I.././Middlewares/Third_Party/FreeRTOS/Source/include -I.././Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I.././Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I.././Drivers/CMSIS/Device/ST/STM32WBxx/Include -I.././Drivers/CMSIS/Include -I.././STM32_WPAN/Target -I.././Matter/Inc -I.././Middlewares/ST/STM32_WPAN -I.././Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I.././Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I.././Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I.././Middlewares/ST/STM32_WPAN/ble/core -I.././Middlewares/ST/STM32_WPAN/ble/core/auto -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.cpp Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/app_debug.cyclo ./Core/Src/app_debug.d ./Core/Src/app_debug.o ./Core/Src/app_debug.su ./Core/Src/app_entry.cyclo ./Core/Src/app_entry.d ./Core/Src/app_entry.o ./Core/Src/app_entry.su ./Core/Src/app_freertos.cyclo ./Core/Src/app_freertos.d ./Core/Src/app_freertos.o ./Core/Src/app_freertos.su ./Core/Src/bme280.cyclo ./Core/Src/bme280.d ./Core/Src/bme280.o ./Core/Src/bme280.su ./Core/Src/entropy_hardware_poll.cyclo ./Core/Src/entropy_hardware_poll.d ./Core/Src/entropy_hardware_poll.o ./Core/Src/entropy_hardware_poll.su ./Core/Src/flash_wb.cyclo ./Core/Src/flash_wb.d ./Core/Src/flash_wb.o ./Core/Src/flash_wb.su ./Core/Src/freertos_port.cyclo ./Core/Src/freertos_port.d ./Core/Src/freertos_port.o ./Core/Src/freertos_port.su ./Core/Src/hw_timerserver.cyclo ./Core/Src/hw_timerserver.d ./Core/Src/hw_timerserver.o ./Core/Src/hw_timerserver.su ./Core/Src/hw_uart.cyclo ./Core/Src/hw_uart.d ./Core/Src/hw_uart.o ./Core/Src/hw_uart.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/ota.cyclo ./Core/Src/ota.d ./Core/Src/ota.o ./Core/Src/ota.su ./Core/Src/stm32_lpm_if.cyclo ./Core/Src/stm32_lpm_if.d ./Core/Src/stm32_lpm_if.o ./Core/Src/stm32_lpm_if.su ./Core/Src/stm32wbxx_hal_msp.cyclo ./Core/Src/stm32wbxx_hal_msp.d ./Core/Src/stm32wbxx_hal_msp.o ./Core/Src/stm32wbxx_hal_msp.su ./Core/Src/stm32wbxx_hal_timebase_tim.cyclo ./Core/Src/stm32wbxx_hal_timebase_tim.d ./Core/Src/stm32wbxx_hal_timebase_tim.o ./Core/Src/stm32wbxx_hal_timebase_tim.su ./Core/Src/stm32wbxx_it.cyclo ./Core/Src/stm32wbxx_it.d ./Core/Src/stm32wbxx_it.o ./Core/Src/stm32wbxx_it.su ./Core/Src/stm_ext_flash.cyclo ./Core/Src/stm_ext_flash.d ./Core/Src/stm_ext_flash.o ./Core/Src/stm_ext_flash.su ./Core/Src/stm_logging.cyclo ./Core/Src/stm_logging.d ./Core/Src/stm_logging.o ./Core/Src/stm_logging.su ./Core/Src/system_stm32wbxx.cyclo ./Core/Src/system_stm32wbxx.d ./Core/Src/system_stm32wbxx.o ./Core/Src/system_stm32wbxx.su

.PHONY: clean-Core-2f-Src

