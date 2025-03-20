#ifndef BME280_H
#define BME280_H

#include "stm32wbxx_hal.h"

//BMP280 I2C address (0x76) is left-shifted by one bit since STM32 HAL requires the 8-bit address format.
#define  DEVICE_ADDRESS_L (0x76 << 1)
#define  DEVICE_ADDRESS_H (0x76 << 1)

typedef struct {
    uint16_t dig_T1;
    int16_t dig_T2, dig_T3;
    uint16_t dig_P1;
    int16_t dig_P2, dig_P3, dig_P4, dig_P5, dig_P6, dig_P7, dig_P8, dig_P9;
    uint8_t dig_H1;
    int16_t dig_H2;
    uint8_t dig_H3;
    int16_t dig_H4, dig_H5;
    int8_t dig_H6;
} BMP280_CalibData;

void read_calibration_data(I2C_HandleTypeDef *hi2c);
float compensate_temperature(int32_t adc_T);
float compensate_pressure(int32_t adc_P);
float compensate_humidity(int32_t adc_H);

#endif
