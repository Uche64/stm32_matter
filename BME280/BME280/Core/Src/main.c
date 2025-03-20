/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "bme280.h"  // Include the new BMP280 header file
#include "rfm95.h"
//#include "lorawan.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>


/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */


//Registers store the temperature value (MSB, LSB, XLSB) - Data registers, read only.
//Without filter, resolution depends on osrs_t else it is always 20 bits
#define temp_xlsb 0xFC //Contains the XLSB part ut[3:0] of the raw temperature measurement output data, depends on pressure resolution
#define temp_lsb 0xFB //Contains the LSB part ut[11:4] of the raw temperature measurement output data
#define temp_msb 0xFA //Contains the MSB part ut[19:12] of the raw temperature measurement output data


//Without filter, resolution depends on osrs_p else it is always 20 bits
#define press_xslb 0xF9 //Contains the XLSB part up[3:0] of the raw pressure measurement output data, depends on temperature resolution
#define press_lsb 0xF8 //Contains the LSB part up[11:4] of the raw pressure measurement output data
#define press_msb 0xF7 //Contains the MSB part up[19:12] of the raw pressure measurement output data

//#define hum_xslb 0xF9
#define hum_lsb 0xFE //Contains the LSB part uh[7:0] of the raw humidity measurement output data
#define hum_msb 0xFD //Contains the MSB part uh[15:8] of the raw humidity measurement output data

#define config 0xF5 //Sets the rate, filter and interface options of the device, read/write except in bit1 does not change (reserved)
#define ctrl_meas 0xF4  //Sets the pressure and temperature data acquisition options on the device, read/write

#define status 0xF3 //Contains two bits that indicate status of the device, read only
#define reset 0xE0 //Contains soft reset word reset[7:0], write only
#define id 0xD0 //Chip identification number chip_id[0x60], read only

//Calibration data registers (read only) which store the factory calibration data for calculating the final value of pressure and temperature.
#define cal25 0xA1
#define cal24 0xA0
#define cal23 0x9F
#define cal22 0x9E
#define cal21 0x9D
#define cal20 0x9C
#define cal19 0x9B
#define cal18 0x9A
#define cal17 0x99
#define cal16 0x98
#define cal15 0x97
#define cal14 0x96
#define cal13 0x95
#define cal12 0x94
#define cal11 0x93
#define cal10 0x92
#define cal09 0x91
#define cal08 0x90
#define cal07 0x8F
#define cal06 0x8E
#define cal05 0x8D
#define cal04 0x8C
#define cal03 0x8B
#define cal02 0x8A
#define cal01 0x89
#define cal00 0x88
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi2;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
uint32_t devAddr = 0x0154780C;

uint8_t nwkSKey[16] = { 0xE3, 0xB0, 0x39, 0x08, 0xEE, 0xC6, 0xEA, 0x53,
                        0x1A, 0xF1, 0x0A, 0x8B, 0x8B, 0xD6, 0x34, 0x91 };

uint8_t appSKey[16] = { 0xC1, 0xD8, 0xCF, 0x67, 0x74, 0xC4, 0x99, 0x5F,
                        0xF6, 0x54, 0x50, 0x27, 0x81, 0xBD, 0xD4, 0x12 };

uint32_t frameCounter = 0;


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_SPI2_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* Configure the peripherals common clocks */
  PeriphCommonClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_USART1_UART_Init();
  MX_SPI2_Init();
  /* USER CODE BEGIN 2 */

  //RFM95_Reset();  // Reset module first
  HAL_Delay(200); // Stabilize
  RFM95_Reset();
  RFM95_Init(); // Init LoRa
  RFM95_SetFrequency(868100000); // Set Frequency for Europe
  RFM95_SetTxPower(14); // Max power (adjust if needed)

  // Enable interrupts (if needed for DIO0 or other IRQ lines)
  __enable_irq();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  //uint8_t chipID = 0;

  //Writes configuration values to the ctrl_meas register, setting the measurement mode
  uint8_t BMP280_Config[2]={0xB3,0xA0};
  HAL_I2C_Mem_Write(&hi2c1, DEVICE_ADDRESS_L,ctrl_meas,1,BMP280_Config,2,0x10000);

  /* Read Calibration Data */
  read_calibration_data(&hi2c1);

  // Initialize LoRaWAN frame counter (if using ABP)
  frameCounter = 0;

  // Debug print to UART
  char startMsg[] = "System Initialized. Starting sensor + LoRaWAN...\r\n";
  HAL_UART_Transmit(&huart1, (uint8_t*)startMsg, strlen(startMsg), 100);

  /* USER CODE BEGIN WHILE */
  while (1)
  {

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

      HAL_Delay(1000);  // Update data every 1 second


      // Read Raw Temperature
      uint8_t temp_data[3], press_data[3], hum_data[2];

      unsigned char temp_reg = 0xFA;
      unsigned char press_reg = 0xF7;
      unsigned char hum_reg = 0xFD;

      // Read Raw temperature
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &temp_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, temp_data, 3, 500);
      // Read Raw Pressure
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &press_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, press_data, 3, 500);
      // Read Raw Humidity
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &hum_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, hum_data, 2, 500);

      // Convert raw data (20-bit value)
      int32_t raw_temp = ((int32_t)temp_data[0] << 12) | ((int32_t)temp_data[1] << 4) | (temp_data[2] >> 4);
      int32_t raw_press = ((int32_t)press_data[0] << 12) | ((int32_t)press_data[1] << 4) | (press_data[2] >> 4);
      int32_t raw_hum = ((int32_t)hum_data[0] << 8) | hum_data[1];


      float temp = compensate_temperature(raw_temp);
      float pressure = compensate_pressure(raw_press);
      float humidity = compensate_humidity(raw_hum);


      // Format data for LoRaWAN (scale and pack)
      int16_t temp_int = (int16_t)(temp * 100);
      uint16_t hum_int = (uint16_t)(humidity * 100);
      uint16_t press_int = (uint16_t)(pressure * 10);

      uint8_t payload[6];
      payload[0] = (temp_int >> 8) & 0xFF;
      payload[1] = temp_int & 0xFF;
      payload[2] = (hum_int >> 8) & 0xFF;
      payload[3] = hum_int & 0xFF;
      payload[4] = (press_int >> 8) & 0xFF;
      payload[5] = press_int & 0xFF;

      // Debug print
      char buffer[128];
      sprintf(buffer, "T: %.2f C, H: %.2f %%, P: %.2f hPa\r\n", temp, humidity, pressure);
      HAL_UART_Transmit(&huart1, (uint8_t*)buffer, strlen(buffer), 100);

      // Create and send LoRaWAN packet
      uint8_t packet[64];
      frameCounter++;
      uint8_t packet_len = LoRaWAN_CreatePacket_ABP(devAddr, nwkSKey, appSKey, payload, sizeof(payload), packet, frameCounter);

      RFM95_Send(packet, packet_len);
      HAL_UART_Transmit(&huart1, (uint8_t *)"Packet Sent\r\n", strlen("Packet Sent\r\n"), 100);
  }

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV1;
  RCC_OscInitStruct.PLL.PLLN = 32;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure the SYSCLKSource, HCLK, PCLK1 and PCLK2 clocks dividers
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK4|RCC_CLOCKTYPE_HCLK2
                              |RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.AHBCLK2Divider = RCC_SYSCLK_DIV2;
  RCC_ClkInitStruct.AHBCLK4Divider = RCC_SYSCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief Peripherals Common Clock Configuration
  * @retval None
  */
void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the peripherals clock
  */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_SMPS;
  PeriphClkInitStruct.SmpsClockSelection = RCC_SMPSCLKSOURCE_HSI;
  PeriphClkInitStruct.SmpsDivSelection = RCC_SMPSCLKDIV_RANGE1;

  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN Smps */

  /* USER CODE END Smps */
}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x10B17DB5;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_8;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 7;
  hspi2.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi2.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */
  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_0, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC11 */
  GPIO_InitStruct.Pin = GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PD0 */
  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pin : PA5 */
  GPIO_InitStruct.Pin = GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */
  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

// This function gets called automatically when an EXTI interrupt occurs
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    if (GPIO_Pin == GPIO_PIN_11) // Check if interrupt came from PC11 (RFM95 DIO0)
    {
        // Handle TX_DONE or RX_DONE
        char msg[] = "LoRa event detected on G0!\r\n";
        HAL_UART_Transmit(&huart1, (uint8_t *)msg, strlen(msg), 100);

        // TODO: Call your LoRaWAN stack or custom handler here
        // Example: LoRa_HandleDio0Interrupt(); // if such function exists
    }
}



/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
