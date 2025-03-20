################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.cpp 

OBJS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.o 

CPP_DEPS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/%.o Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/%.su Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/%.cyclo: ../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/%.cpp Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-cli

clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-cli:
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_bbr.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_br.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_coap_secure.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_commissioner.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dataset.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_dns.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_history.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_joiner.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_mac_filter.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_network_data.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_output.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_client.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_srp_server.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_tcp.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/cli/cli_udp.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-cli

