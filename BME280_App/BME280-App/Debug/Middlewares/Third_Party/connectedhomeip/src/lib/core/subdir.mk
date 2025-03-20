################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/lib/core/%.o Middlewares/Third_Party/connectedhomeip/src/lib/core/%.su Middlewares/Third_Party/connectedhomeip/src/lib/core/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/lib/core/%.cpp Middlewares/Third_Party/connectedhomeip/src/lib/core/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-core

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-core:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPError.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/CHIPKeyIds.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/ErrorStr.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/OTAImageHeader.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVCircularBuffer.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVDebug.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVReader.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVTags.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUpdater.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVUtilities.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVVectorWriter.su ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.d ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.o ./Middlewares/Third_Party/connectedhomeip/src/lib/core/TLVWriter.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-core

