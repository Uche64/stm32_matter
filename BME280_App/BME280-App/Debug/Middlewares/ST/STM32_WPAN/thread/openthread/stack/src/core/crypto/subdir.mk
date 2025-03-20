################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.cpp \
../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.cpp 

OBJS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.o \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.o 

CPP_DEPS += \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.d \
./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/%.o Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/%.su Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/%.cyclo: ../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/%.cpp Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-crypto

clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-crypto:
	-$(RM) ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ccm.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/aes_ecb.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/crypto_platform.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hkdf_sha256.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/hmac_sha256.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/mbedtls.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/sha256.su ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.cyclo ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.d ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.o ./Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/crypto/storage.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_WPAN-2f-thread-2f-openthread-2f-stack-2f-src-2f-core-2f-crypto

