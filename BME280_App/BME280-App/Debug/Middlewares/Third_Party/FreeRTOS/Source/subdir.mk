################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
../Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
../Middlewares/Third_Party/FreeRTOS/Source/list.c \
../Middlewares/Third_Party/FreeRTOS/Source/queue.c \
../Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c \
../Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
../Middlewares/Third_Party/FreeRTOS/Source/timers.c 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/croutine.d \
./Middlewares/Third_Party/FreeRTOS/Source/event_groups.d \
./Middlewares/Third_Party/FreeRTOS/Source/list.d \
./Middlewares/Third_Party/FreeRTOS/Source/queue.d \
./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.d \
./Middlewares/Third_Party/FreeRTOS/Source/tasks.d \
./Middlewares/Third_Party/FreeRTOS/Source/timers.d 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/croutine.o \
./Middlewares/Third_Party/FreeRTOS/Source/event_groups.o \
./Middlewares/Third_Party/FreeRTOS/Source/list.o \
./Middlewares/Third_Party/FreeRTOS/Source/queue.o \
./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.o \
./Middlewares/Third_Party/FreeRTOS/Source/tasks.o \
./Middlewares/Third_Party/FreeRTOS/Source/timers.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/%.o Middlewares/Third_Party/FreeRTOS/Source/%.su Middlewares/Third_Party/FreeRTOS/Source/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/%.c Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCFG_BLE -DCHIP_HAVE_CONFIG_H -DCORE_CM4 -DTHREAD_WB '-DCHIP_PLATFORM_CONFIG_INCLUDE=<CHIPPlatformConfig.h>' '-DCHIP_PROJECT_CONFIG_INCLUDE=<CHIPProjectConfig.h>' '-DMBEDTLS_CONFIG_FILE=<matter_config.h>' '-DOPENTHREAD_CONFIG_FILE=<openthread_api_config_matter.h>' '-DCHIP_ADDRESS_RESOLVE_IMPL_INCLUDE_HEADER=<lib/address_resolve/AddressResolve_DefaultImpl.h>' -DNON_SPEC_COMPLIANT_OTA_ACTION_DELAY_FLOOR=-1 -DUSE_STM32WB5M_DK -DUSE_HAL_DRIVER -DSTM32WB5Mxx -c -I../Core/Inc -I../STM32_WPAN/App -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app/zap-generated -I../Middlewares/Third_Party/connectedhomeip/devices/Thread/BME280-app -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/ssd1315 -I../Drivers/BSP/Components/s25fl128s -I../Drivers/BSP/STM32WB5MM-DK -I../Middlewares/Third_Party/connectedhomeip/zzz_generated/app-common/zap-generated -I../Middlewares/Third_Party/connectedhomeip/zzz_generated -I../Middlewares/Third_Party/connectedhomeip/src/app/icd/server -I../Middlewares/Third_Party/connectedhomeip/src/app/reporting -I../Middlewares/Third_Party/connectedhomeip/src/app/app-platform -I../Middlewares/Third_Party/connectedhomeip/src/platform -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb/BuildConfig -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32/stm32wb -I../Middlewares/Third_Party/connectedhomeip/src/platform/stm32 -I../Middlewares/Third_Party/connectedhomeip/src/crypto -I../Middlewares/Third_Party/connectedhomeip/src -I../Middlewares/Third_Party/connectedhomeip/src/include -I../Middlewares/Third_Party/connectedhomeip/src/lib -I../Middlewares/Third_Party/connectedhomeip/src/platform/OpenThread -I../Middlewares/Third_Party/connectedhomeip/src/inet -I../Middlewares/Third_Party/nlassert/include -I../Middlewares/Third_Party/nlio/include -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/thread/openthread/core/openthread_api -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core/config -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/Target -I../Matter/Inc -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Middlewares/ST/STM32_WPAN/thread/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/include/openthread -I../Middlewares/ST/STM32_WPAN/thread/openthread/stack/src/core -I../Utilities/Fonts -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/nlio/tests -I"C:/Users/Windows/Downloads/nlunit-test/nlunit-test-master/src" -I../Middlewares/Third_Party/mbedtls/include -I../Middlewares/Third_Party/mbedtls/library -I../Middlewares/Third_Party/mbedtls/tests/include -I../Middlewares/Third_Party/mbedtls/tests/include/test -Os -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/croutine.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/croutine.d ./Middlewares/Third_Party/FreeRTOS/Source/croutine.o ./Middlewares/Third_Party/FreeRTOS/Source/croutine.su ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.d ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.o ./Middlewares/Third_Party/FreeRTOS/Source/event_groups.su ./Middlewares/Third_Party/FreeRTOS/Source/list.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/list.d ./Middlewares/Third_Party/FreeRTOS/Source/list.o ./Middlewares/Third_Party/FreeRTOS/Source/list.su ./Middlewares/Third_Party/FreeRTOS/Source/queue.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/queue.d ./Middlewares/Third_Party/FreeRTOS/Source/queue.o ./Middlewares/Third_Party/FreeRTOS/Source/queue.su ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.d ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.o ./Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.su ./Middlewares/Third_Party/FreeRTOS/Source/tasks.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/tasks.d ./Middlewares/Third_Party/FreeRTOS/Source/tasks.o ./Middlewares/Third_Party/FreeRTOS/Source/tasks.su ./Middlewares/Third_Party/FreeRTOS/Source/timers.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/timers.d ./Middlewares/Third_Party/FreeRTOS/Source/timers.o ./Middlewares/Third_Party/FreeRTOS/Source/timers.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source

