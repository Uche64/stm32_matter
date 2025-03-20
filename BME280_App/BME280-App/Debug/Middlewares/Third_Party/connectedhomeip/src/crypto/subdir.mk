################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.cpp \
../Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.o \
./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.d \
./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/crypto/%.o Middlewares/Third_Party/connectedhomeip/src/crypto/%.su Middlewares/Third_Party/connectedhomeip/src/crypto/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/crypto/%.cpp Middlewares/Third_Party/connectedhomeip/src/crypto/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-crypto

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-crypto:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPAL.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALOpenSSL.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALPSA.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLS.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/CHIPCryptoPALmbedTLSCert.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSAOperationalKeystore.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/PSASessionKeystore.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/PersistentStorageOperationalKeystore.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/RandUtils.su ./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.cyclo ./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.d ./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.o ./Middlewares/Third_Party/connectedhomeip/src/crypto/RawKeySessionKeystore.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-crypto

