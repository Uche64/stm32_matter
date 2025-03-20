################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.c \
../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.c 

C_DEPS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.d 

OBJS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/%.o Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/%.su Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/%.cyclo: ../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/%.c Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCFG_BLE -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../STM32_WPAN/App -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/STM32WB5MM-DK -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/Target -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Utilities/Fonts -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/nlio/tests -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/tests/include -I../Middlewares/Third_Party/mbedtls/tests/include/test -Os -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-core-2f-openthread_api

clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-core-2f-openthread_api:
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/backbone_router_ftd.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_agent.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_router.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/border_routing.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_manager.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/channel_monitor.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/child_supervision.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/cli_platform.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/coap_secure.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/commissioner.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/crypto.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dac_crypto_hal.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_ftd.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dataset_updater.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/diag.su
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/dns_server.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/entropy.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/errors.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/heap.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/history_tracker.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/icmp6.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/instance.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ip6.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/jam_detection.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/joiner.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_metrics.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/link_raw.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/logging.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/mesh_diag.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/message.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/multi_radio.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/nat64.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.cyclo
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdata_publisher.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/netdiag.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/network_time.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/openthread_api_wb.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/ping_sender.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/radio.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_crypto.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/random_noncrypto.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/server.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/sntp.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_client_buffers.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/srp_server.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tasklet.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/tcp_ext.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.o
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/thread_ftd.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/trel.su ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.d ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.o ./Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api/udp.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-core-2f-openthread_api

