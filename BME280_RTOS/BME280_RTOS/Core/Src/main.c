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
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "bme280.h"  // Include the new BMP280 header file
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

UART_HandleTypeDef huart1;

/* Definitions for Temperature */
osThreadId_t TemperatureHandle;
const osThreadAttr_t Temperature_attributes = {
  .name = "Temperature",
  .priority = (osPriority_t) osPriorityNormal,
  .stack_size = 256 * 4
};
/* Definitions for Pressure */
osThreadId_t PressureHandle;
const osThreadAttr_t Pressure_attributes = {
  .name = "Pressure",
  .priority = (osPriority_t) osPriorityBelowNormal,
  .stack_size = 256 * 4
};
/* Definitions for Humidity */
osThreadId_t HumidityHandle;
const osThreadAttr_t Humidity_attributes = {
  .name = "Humidity",
  .priority = (osPriority_t) osPriorityLow,
  .stack_size = 256 * 4
};
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_USART1_UART_Init(void);
void StartTemperature(void *argument);
void StartPressure(void *argument);
void StartHumidity(void *argument);

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
  /* USER CODE BEGIN 2 */

  uint8_t chipID = 0;

  //Writes configuration values to the ctrl_meas register, setting the measurement mode
  uint8_t BMP280_Config[2]={0xB3,0xA0};
  HAL_I2C_Mem_Write(&hi2c1, DEVICE_ADDRESS_L,ctrl_meas,1,BMP280_Config,2,0x10000);

  //uint8_t temp_data[3], press_data[3], hum_data[2];

  /* Read Calibration Data */
  read_calibration_data(&hi2c1);

  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of Temperature */
  TemperatureHandle = osThreadNew(StartTemperature, NULL, &Temperature_attributes);

  /* creation of Pressure */
  PressureHandle = osThreadNew(StartPressure, NULL, &Pressure_attributes);

  /* creation of Humidity */
  HumidityHandle = osThreadNew(StartHumidity, NULL, &Humidity_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	//HAL_Delay(1000);  // Update data every 1 second
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
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartTemperature */
/**
  * @brief  Function implementing the Temperature thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartTemperature */
void StartTemperature(void *argument)
{
  /* USER CODE BEGIN 5 */
  /* Infinite loop */
  while(1){
	  uint8_t temp_data[3];
	  unsigned char temp_reg = 0xFA;


      // Read Raw temperature
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &temp_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, temp_data, 3, 500);

      // Convert raw temperature data (20-bit value) + Compensate
      int32_t raw_temp = ((int32_t)temp_data[0] << 12) | ((int32_t)temp_data[1] << 4) | (temp_data[2] >> 4);
      float temp = compensate_temperature(raw_temp);

      // Print to UART
      //char buffer[50];
      //sprintf(buffer, "Temperature: %.2f \xB0C \r\n", temp);
      //HAL_UART_Transmit(&huart1, (uint8_t *)buffer, strlen(buffer), 100);

      //Print to SWV
      printf("Task 1 \n");
      printf("Temperature: %.2f C\r\n", temp);
      fflush(stdout);

      osDelay(1000);
  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartPressure */
/**
* @brief Function implementing the Pressure thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartPressure */
void StartPressure(void *argument)
{
  /* USER CODE BEGIN StartPressure */
  /* Infinite loop */
  while(1){
	  uint8_t press_data[3];
	  unsigned char press_reg = 0xF7;

	  // Read Raw Pressure
	  HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &press_reg, 1, 500);
	  HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, press_data, 3, 500);

	  // Convert raw pressure data (20-bit value)+ Compensate
	  int32_t raw_press = ((int32_t)press_data[0] << 12) | ((int32_t)press_data[1] << 4) | (press_data[2] >> 4);
	  float pressure = compensate_pressure(raw_press);

	  // Print to UART
	  //char buffer[50];
	  //sprintf(buffer, "Pressure: %.2f hPa\r\n", pressure);
	  //HAL_UART_Transmit(&huart1, (uint8_t *)buffer, strlen(buffer), 100);

	  //Print to SWV
	  printf("Task 2 \n");
	  printf("Pressure: %.2f hPa\r\n", pressure);
	  fflush(stdout);

	  osDelay(1000);
  }
  /* USER CODE END StartPressure */
}

/* USER CODE BEGIN Header_StartHumidity */
/**
* @brief Function implementing the Humidity thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartHumidity */
void StartHumidity(void *argument)
{
  /* USER CODE BEGIN StartHumidity */
  /* Infinite loop */
  while(1){
	  uint8_t hum_data[2];
	  unsigned char hum_reg = 0xFD;

	  // Read Raw Humidity
	  HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &hum_reg, 1, 500);
	  HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, hum_data, 2, 500);

	  // Convert raw pressure data (20-bit value)+ Compensate
	  int32_t raw_hum = ((int32_t)hum_data[0] << 8) | hum_data[1];
	  float humidity = compensate_humidity(raw_hum);

	  // Print to UART
	  //char buffer[50];
	  //sprintf(buffer, "Humidity: %.2f %%\r\n", humidity);
	  //HAL_UART_Transmit(&huart1, (uint8_t *)buffer, strlen(buffer), 100);

	  //Print to SWV
	  printf("Task 3 \n");
	  printf("Humidity: %.2f %%\r\n", humidity);
	  fflush(stdout);

	  osDelay(1000);
  }
  /* USER CODE END StartHumidity */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM16 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM16) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

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
