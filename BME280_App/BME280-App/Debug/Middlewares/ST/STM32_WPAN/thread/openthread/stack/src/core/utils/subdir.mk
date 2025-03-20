################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.cpp 

OBJS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.o 

CPP_DEPS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/%.o Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/%.su Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/%.cyclo: ../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/%.cpp Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-utils

clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-utils:
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_manager.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/channel_monitor.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/flash.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/heap.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/history_tracker.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/jam_detector.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/mesh_diag.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/otns.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/parse_cmdline.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/ping_sender.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/power_calibration.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/slaac_address.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/utils/srp_client_buffers.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-utils

