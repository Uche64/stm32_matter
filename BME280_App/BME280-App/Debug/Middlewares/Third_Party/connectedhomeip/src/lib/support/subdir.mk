################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.cpp \
../Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.cpp 

OBJS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.o \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.o 

CPP_DEPS += \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.d \
./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/connectedhomeip/src/lib/support/%.o Middlewares/Third_Party/connectedhomeip/src/lib/support/%.su Middlewares/Third_Party/connectedhomeip/src/lib/support/%.cyclo: ../Middlewares/Third_Party/connectedhomeip/src/lib/support/%.cpp Middlewares/Third_Party/connectedhomeip/src/lib/support/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g3 -DDEBUG -DUSE_HAL_DRIVER -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../STM32_WPAN/Target -I../System/Inc -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Utilities/lpm/tiny_lpm -I../Utilities/Fonts -I../Utilities/LCD -I../Drivers/BSP/STM32WB5MM-DK -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/Common -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Drivers/CMSIS/Devices/ST/STM32WBxx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-support

clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-support:
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Base64.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferReader.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BufferWriter.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesCircularBuffer.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/BytesToHex.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPArgParser.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPFaultInjection.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Malloc.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem-Simple.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPMem.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/CHIPPlatformMemory.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FibonacciUtils.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/FixedBufferAllocator.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/IniEscaping.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/JniReferences.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PersistentStorageAudit.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/Pool.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/PrivateHeap.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/StringBuilder.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.o
	-$(RM) ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ThreadOperationalDataset.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/TimeUtils.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTest.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestRegistration.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/UnitTestUtils.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/ZclString.su ./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.cyclo ./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.d ./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.o ./Middlewares/Third_Party/connectedhomeip/src/lib/support/utf8.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-connectedhomeip-2f-src-2f-lib-2f-support

