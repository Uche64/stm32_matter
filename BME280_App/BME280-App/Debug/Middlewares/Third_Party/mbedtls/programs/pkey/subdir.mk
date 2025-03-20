################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/key_app.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.c \
../Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.c 

C_DEPS += \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.d \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.d 

OBJS += \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.o \
./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/mbedtls/programs/pkey/%.o Middlewares/Third_Party/mbedtls/programs/pkey/%.su Middlewares/Third_Party/mbedtls/programs/pkey/%.cyclo: ../Middlewares/Third_Party/mbedtls/programs/pkey/%.c Middlewares/Third_Party/mbedtls/programs/pkey/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCFG_BLE -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../STM32_WPAN/App -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/STM32WB5MM-DK -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/Target -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Utilities/Fonts -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/nlio/tests -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/tests/include -I../Middlewares/Third_Party/mbedtls/tests/include/test -Os -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-pkey

clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-pkey:
	-$(RM) ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.d ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.o ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_client.su ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.d ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.o ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_genprime.su ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.d ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.o ./Middlewares/Third_Party/mbedtls/programs/pkey/dh_server.su ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.d ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.o ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdh_curve25519.su ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.d ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.o ./Middlewares/Third_Party/mbedtls/programs/pkey/ecdsa.su ./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.d ./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.o ./Middlewares/Third_Party/mbedtls/programs/pkey/gen_key.su ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.d ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.o ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app.su ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.d ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.o ./Middlewares/Third_Party/mbedtls/programs/pkey/key_app_writer.su ./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.d ./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.o ./Middlewares/Third_Party/mbedtls/programs/pkey/mpi_demo.su ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.d ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.o ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_decrypt.su ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.d ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.o ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_encrypt.su ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.d ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.o ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_sign.su ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.d ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.o ./Middlewares/Third_Party/mbedtls/programs/pkey/pk_verify.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_decrypt.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_encrypt.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_genkey.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_sign_pss.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify.su ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.cyclo ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.d ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.o ./Middlewares/Third_Party/mbedtls/programs/pkey/rsa_verify_pss.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-mbedtls-2f-programs-2f-pkey

