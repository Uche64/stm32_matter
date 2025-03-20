################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/InetError.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.cpp \
../Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.o \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.d \
./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/inet/%.o Middlewares/Third_Party/connectedhomeip/src/inet/%.su Middlewares/Third_Party/connectedhomeip/src/inet/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/inet/%.cpp Middlewares/Third_Party/connectedhomeip/src/inet/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.d ./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.o ./Middlewares/Third_Party/connectedhomeip/src/inet/EndPointStateLwIP.su ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.d ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.o ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress-StringFuncts.su ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.d ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.o ./Middlewares/Third_Party/connectedhomeip/src/inet/IPAddress.su ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.d ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.o ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPacketInfo.su ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.d ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.o ./Middlewares/Third_Party/connectedhomeip/src/inet/IPPrefix.su ./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.d ./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.o ./Middlewares/Third_Party/connectedhomeip/src/inet/InetArgParser.su ./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.d ./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.o ./Middlewares/Third_Party/connectedhomeip/src/inet/InetError.su ./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.d ./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.o ./Middlewares/Third_Party/connectedhomeip/src/inet/InetFaultInjection.su ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.d ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.o ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterface.su ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.d ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.o ./Middlewares/Third_Party/connectedhomeip/src/inet/InetInterfaceImplDefault.su ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.d ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.o ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPoint.su ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.d ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.o ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplLwIP.su ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.d ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.o ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplOpenThread.su ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.d ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.o ./Middlewares/Third_Party/connectedhomeip/src/inet/TCPEndPointImplSockets.su ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.d ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.o ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPoint.su ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.d ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.o ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplLwIP.su ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.d ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.o ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplNetworkFramework.su ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.d ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.o ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplOpenThread.su ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.cyclo ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.d ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.o ./Middlewares/Third_Party/connectedhomeip/src/inet/UDPEndPointImplSockets.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-inet

