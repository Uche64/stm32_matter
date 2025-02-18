#include "bme280.h"
#include "main.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* Global Variables */
BMP280_CalibData calib_data;
int32_t t_fine;

/* Function to Read Calibration Data */
void read_calibration_data(I2C_HandleTypeDef *hi2c) {
    uint8_t calib[26];
    uint8_t calib_addr = 0x88; //defined as cal00
    HAL_I2C_Master_Transmit(hi2c, DEVICE_ADDRESS_L, &calib_addr, 1, 500);
    HAL_I2C_Master_Receive(hi2c, DEVICE_ADDRESS_L | 0x01, calib, 26, 500);

    calib_data.dig_T1 = (uint16_t)(calib[1] << 8) | calib[0];
    calib_data.dig_T2 = (int16_t)(calib[3] << 8) | calib[2];
    calib_data.dig_T3 = (int16_t)(calib[5] << 8) | calib[4];

    calib_data.dig_P1 = (uint16_t)(calib[7] << 8) | calib[6];
    calib_data.dig_P2 = (int16_t)(calib[9] << 8) | calib[8];
    calib_data.dig_P3 = (int16_t)(calib[11] << 8) | calib[10];
    calib_data.dig_P4 = (int16_t)(calib[13] << 8) | calib[12];
    calib_data.dig_P5 = (int16_t)(calib[15] << 8) | calib[14];
    calib_data.dig_P6 = (int16_t)(calib[17] << 8) | calib[16];
    calib_data.dig_P7 = (int16_t)(calib[19] << 8) | calib[18];
    calib_data.dig_P8 = (int16_t)(calib[21] << 8) | calib[20];
    calib_data.dig_P9 = (int16_t)(calib[23] << 8) | calib[22];

    calib_data.dig_H1 = calib[25];

    uint8_t hum_calib[7];
    uint8_t hum_addr = 0xE1;
    HAL_I2C_Master_Transmit(hi2c, DEVICE_ADDRESS_L, &hum_addr, 1, 100);
    HAL_I2C_Master_Receive(hi2c, DEVICE_ADDRESS_L | 0x01, hum_calib, 7, 100);

    calib_data.dig_H2 = (int16_t)(hum_calib[1] << 8) | hum_calib[0];
    calib_data.dig_H3 = hum_calib[2];
    calib_data.dig_H4 = (int16_t)(hum_calib[3] << 4) | (hum_calib[4] & 0x0F);
    calib_data.dig_H5 = (int16_t)(hum_calib[5] << 4) | (hum_calib[4] >> 4);
    calib_data.dig_H6 = (int8_t)hum_calib[6];
}

/* Temperature Compensation */
float compensate_temperature(int32_t adc_T) {
    int32_t var1, var2;
    var1 = ((((adc_T >> 3) - ((int32_t)calib_data.dig_T1 << 1))) * ((int32_t)calib_data.dig_T2)) >> 11;
    var2 = (((((adc_T >> 4) - ((int32_t)calib_data.dig_T1)) * ((adc_T >> 4) - ((int32_t)calib_data.dig_T1))) >> 12) * ((int32_t)calib_data.dig_T3)) >> 14;
    t_fine = var1 + var2;
    float T = (t_fine * 5 + 128) >> 8;
    return T / 100.0;
}

/* Pressure Compensation */
float compensate_pressure(int32_t adc_P) {
    int64_t var1, var2, p;
    var1 = ((int64_t)t_fine) - 128000;
    var2 = var1 * var1 * (int64_t)calib_data.dig_P6;
    var2 = var2 + ((var1 * (int64_t)calib_data.dig_P5) << 17);
    var2 = var2 + (((int64_t)calib_data.dig_P4) << 35);
    var1 = ((var1 * var1 * (int64_t)calib_data.dig_P3) >> 8) + ((var1 * (int64_t)calib_data.dig_P2) << 12);
    var1 = (((((int64_t)1) << 47) + var1)) * ((int64_t)calib_data.dig_P1) >> 33;

    if (var1 == 0) return 0;

    p = 1048576 - adc_P;
    p = (((p << 31) - var2) * 3125) / var1;
    var1 = (((int64_t)calib_data.dig_P9) * (p >> 13) * (p >> 13)) >> 25;
    var2 = (((int64_t)calib_data.dig_P8) * p) >> 19;
    p = ((p + var1 + var2) >> 8) + (((int64_t)calib_data.dig_P7) << 4);
    return p / 25600.0;
}

/* Humidity Compensation */
float compensate_humidity(int32_t adc_H) {
    int32_t v_x1_u32r;
    v_x1_u32r = (t_fine - ((int32_t)76800));
    v_x1_u32r = (((((adc_H << 14) - (((int32_t)calib_data.dig_H4) << 20) - (((int32_t)calib_data.dig_H5) * v_x1_u32r)) + ((int32_t)16384)) >> 15) * (((((((v_x1_u32r * ((int32_t)calib_data.dig_H6)) >> 10) * (((v_x1_u32r * ((int32_t)calib_data.dig_H3)) >> 11) + ((int32_t)32768))) >> 10) + ((int32_t)2097152)) * ((int32_t)calib_data.dig_H2) + 8192) >> 14));
    v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * ((int32_t)calib_data.dig_H1)) >> 4));
    v_x1_u32r = (v_x1_u32r < 0 ? 0 : v_x1_u32r);
    v_x1_u32r = (v_x1_u32r > 419430400 ? 419430400 : v_x1_u32r);
    return (v_x1_u32r >> 12) / 1024.0;
}
