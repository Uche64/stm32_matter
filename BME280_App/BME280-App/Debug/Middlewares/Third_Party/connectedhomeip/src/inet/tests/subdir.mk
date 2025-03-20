################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/inet/tests/%.o Middlewares/Third_Party/connectedhomeip/src/inet/tests/%.su Middlewares/Third_Party/connectedhomeip/src/inet/tests/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/inet/tests/%.cpp Middlewares/Third_Party/connectedhomeip/src/inet/tests/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet-2f-tests

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet-2f-tests:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestBasicPacketFilters.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetAddress.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonOptions.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetCommonPosix.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetEndPoint.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetErrorStr.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayer.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestInetLayerCommon.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestLwIPDNS.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupFaultInjectionPosix.su ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.d ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.o ./Middlewares/Third_Party/connectedhomeip/src/inet/tests/TestSetupSignallingPosix.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet-2f-tests

