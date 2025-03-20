################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.cpp 

OBJS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.o 

CPP_DEPS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/%.o Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/%.su Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/%.cyclo: ../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/%.cpp Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-ncp

clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-ncp:
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/changed_props_set.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/example_vendor_hook.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_dispatcher.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_ftd.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_mtd.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_base_radio.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_hdlc.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/ncp/ncp_spi.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-ncp

