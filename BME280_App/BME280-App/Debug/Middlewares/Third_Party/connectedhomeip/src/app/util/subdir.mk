################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.cpp \
../Middlewares/Third_Party/connectedhomeip/src/app/util/util.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.o \
./Middlewares/Third_Party/connectedhomeip/src/app/util/util.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.d \
./Middlewares/Third_Party/connectedhomeip/src/app/util/util.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/app/util/%.o Middlewares/Third_Party/connectedhomeip/src/app/util/%.su Middlewares/Third_Party/connectedhomeip/src/app/util/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/app/util/%.cpp Middlewares/Third_Party/connectedhomeip/src/app/util/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-app-2f-util

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-app-2f-util:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/DataModelHandler.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/MatterCallbacks.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-metadata.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-storage.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/attribute-table.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/binding-table.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-compatibility-functions.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/ember-strings.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/generic-callback-stubs.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/privilege-storage.su ./Middlewares/Third_Party/connectedhomeip/src/app/util/util.cyclo ./Middlewares/Third_Party/connectedhomeip/src/app/util/util.d ./Middlewares/Third_Party/connectedhomeip/src/app/util/util.o ./Middlewares/Third_Party/connectedhomeip/src/app/util/util.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-app-2f-util

