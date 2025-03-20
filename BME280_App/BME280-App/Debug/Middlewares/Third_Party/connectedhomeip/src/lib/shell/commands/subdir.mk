################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/%.o Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/%.su Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/%.cpp Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-shell-2f-commands

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-shell-2f-commands:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/BLE.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Base64.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Config.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Device.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Dns.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Help.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Meta.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/NFC.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/OnboardingCodes.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Ota.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/Stat.su ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.d ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.o ./Middlewares/Third_Party/connectedhomeip/src/lib/shell/commands/WiFi.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-shell-2f-commands

