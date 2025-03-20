################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/%.o Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/%.su Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/%.cpp Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-format-2f-tests

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-format-2f-tests:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.d ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.o ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/FuzzPayloadDecoder.su ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.d ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.o ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestDecoding.su ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.d ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.o ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTree.su ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.d ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.o ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/TestFlatTreePosition.su ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.d ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.o ./Middlewares/Third_Party/connectedhomeip/src/lib/format/tests/sample_data.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-format-2f-tests

