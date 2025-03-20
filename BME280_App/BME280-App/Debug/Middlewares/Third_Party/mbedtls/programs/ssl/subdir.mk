################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.c \
../Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.c 

C_DEPS += \
./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.d \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.d 

OBJS += \
./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.o \
./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/mbedtls/programs/ssl/%.o Middlewares/Third_Party/mbedtls/programs/ssl/%.su Middlewares/Third_Party/mbedtls/programs/ssl/%.cyclo: ../Middlewares/Third_Party/mbedtls/programs/ssl/%.c Middlewares/Third_Party/mbedtls/programs/ssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCFG_BLE -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../STM32_WPAN/App -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/STM32WB5MM-DK -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/Target -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Utilities/Fonts -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/nlio/tests -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/tests/include -I../Middlewares/Third_Party/mbedtls/tests/include/test -Os -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-ssl

clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-ssl:
	-$(RM) ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.d ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.o ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_client.su ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.d ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.o ./Middlewares/Third_Party/mbedtls/programs/ssl/dtls_server.su ./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.d ./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.o ./Middlewares/Third_Party/mbedtls/programs/ssl/mini_client.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client1.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_client2.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_context_info.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_fork_server.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_mail_client.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_pthread_server.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_server2.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_common_source.su ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.cyclo ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.d ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.o ./Middlewares/Third_Party/mbedtls/programs/ssl/ssl_test_lib.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-ssl

