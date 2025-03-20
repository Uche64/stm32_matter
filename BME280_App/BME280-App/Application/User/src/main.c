/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
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
#include "app_entry.h" 
#include "app_conf.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "bme280.h"  // Include the new BMP280 header file
#include "app_thread.h"
#include "app_ble.h"
#include "app_matter.h"

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
I2C_HandleTypeDef hi2c3;

IPCC_HandleTypeDef hipcc;

IWDG_HandleTypeDef hiwdg;

UART_HandleTypeDef hlpuart1;
UART_HandleTypeDef huart1;
DMA_HandleTypeDef hdma_lpuart1_tx;
DMA_HandleTypeDef hdma_usart1_tx;

RNG_HandleTypeDef hrng;

RTC_HandleTypeDef hrtc;

/* Definitions for Communication */
osThreadId_t CommunicationHandle;
const osThreadAttr_t Communication_attributes = {
  .name = "Communication",
  .priority = (osPriority_t) osPriorityHigh,
  .stack_size = 256 * 4
};
/* Definitions for Sensors */
osThreadId_t SensorsHandle;
const osThreadAttr_t Sensors_attributes = {
  .name = "Sensors",
  .priority = (osPriority_t) osPriorityNormal,
  .stack_size = 256 * 4
};
/* Definitions for Temperature */
osMessageQueueId_t TemperatureHandle;
const osMessageQueueAttr_t Temperature_attributes = {
  .name = "Temperature"
};
/* Definitions for Pressure */
osMessageQueueId_t PressureHandle;
const osMessageQueueAttr_t Pressure_attributes = {
  .name = "Pressure"
};
/* Definitions for Humidity */
osMessageQueueId_t HumidityHandle;
const osMessageQueueAttr_t Humidity_attributes = {
  .name = "Humidity"
};
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_IPCC_Init(void);
static void MX_RTC_Init(void);
static void MX_RNG_Init(void);
static void MX_IWDG_Init(void);
static void MX_I2C1_Init(void);
static void MX_LPUART1_UART_Init(void);
static void MX_I2C3_Init(void);
static void MX_RF_Init(void);
void StartCommunication(void *argument);
void StartSensors(void *argument);

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
  /* Config code for STM32_WPAN (HSE Tuning must be done before system clock configuration) */
  MX_APPE_Config();

  /* USER CODE BEGIN Init */
  APPE_Config();
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* Configure the peripherals common clocks */
  PeriphCommonClock_Config();

  /* IPCC initialisation */
  MX_IPCC_Init();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_RTC_Init();
  MX_RNG_Init();
  MX_I2C1_Init();
  MX_LPUART1_UART_Init();
  MX_I2C3_Init();
  MX_RF_Init();
  /* USER CODE BEGIN 2 */

  HAL_UART_Transmit(&huart1, (uint8_t *)"DATA************************** \r\n", 30, 100);
  //Writes configuration values to the ctrl_meas register, setting the measurement mode
  uint8_t BMP280_Config[2]={0xB3,0xA0};
  HAL_I2C_Mem_Write(&hi2c1, DEVICE_ADDRESS_L,ctrl_meas,1,BMP280_Config,2,0x10000);
  read_calibration_data(&hi2c1);  //Read Calibration Data

#if ((ENABLE_IWDG_SUPPORT ==1) && (ENABLE_IWDG_INIT == 1))
  MX_IWDG_Init();
#endif /* ((ENABLE_IWDG_SUPPORT ==1) && (ENABLE_IWDG_INIT == 1)) */

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

  /* Create the queue(s) */
  /* creation of Temperature */
  TemperatureHandle = osMessageQueueNew (16, sizeof(uint16_t), &Temperature_attributes);

  /* creation of Pressure */
  PressureHandle = osMessageQueueNew (16, sizeof(uint16_t), &Pressure_attributes);

  /* creation of Humidity */
  HumidityHandle = osMessageQueueNew (16, sizeof(uint16_t), &Humidity_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
#if (ENABLE_DEFAULTTASK == 1)
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of Communication */
  CommunicationHandle = osThreadNew(StartCommunication, NULL, &Communication_attributes);

  /* creation of Sensors */
  SensorsHandle = osThreadNew(StartSensors, NULL, &Sensors_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
#endif /* (ENABLE_DEFAULTTASK == 1) */  
  /* add threads, ... */
  APPE_Init();
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

  /* Init code for STM32_WPAN */
  MX_APPE_Init();

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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

  /** Configure LSE Drive Capability
  */
  HAL_PWR_EnableBkUpAccess();
  __HAL_RCC_LSEDRIVE_CONFIG(RCC_LSEDRIVE_MEDIUMHIGH);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSI
                              |RCC_OSCILLATORTYPE_LSI1|RCC_OSCILLATORTYPE_HSE
                              |RCC_OSCILLATORTYPE_LSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV1;
  RCC_OscInitStruct.PLL.PLLN = 8;
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
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_SMPS|RCC_PERIPHCLK_RFWAKEUP;
  PeriphClkInitStruct.RFWakeUpClockSelection = RCC_RFWKPCLKSOURCE_LSE;
  PeriphClkInitStruct.SmpsClockSelection = RCC_SMPSCLKSOURCE_HSE;
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
  * @brief I2C3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C3_Init(void)
{

  /* USER CODE BEGIN I2C3_Init 0 */

  /* USER CODE END I2C3_Init 0 */

  /* USER CODE BEGIN I2C3_Init 1 */

  /* USER CODE END I2C3_Init 1 */
  hi2c3.Instance = I2C3;
  hi2c3.Init.Timing = 0x10B17DB5;
  hi2c3.Init.OwnAddress1 = 0;
  hi2c3.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c3.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c3.Init.OwnAddress2 = 0;
  hi2c3.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c3.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c3.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c3) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c3, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c3, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C3_Init 2 */

  /* USER CODE END I2C3_Init 2 */

}

/**
  * @brief IPCC Initialization Function
  * @param None
  * @retval None
  */
static void MX_IPCC_Init(void)
{

  /* USER CODE BEGIN IPCC_Init 0 */

  /* USER CODE END IPCC_Init 0 */

  /* USER CODE BEGIN IPCC_Init 1 */

  /* USER CODE END IPCC_Init 1 */
  hipcc.Instance = IPCC;
  if (HAL_IPCC_Init(&hipcc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN IPCC_Init 2 */

  /* USER CODE END IPCC_Init 2 */

}

/**
  * @brief IWDG Initialization Function
  * @param None
  * @retval None
  */
static void MX_IWDG_Init(void)
{

  /* USER CODE BEGIN IWDG_Init 0 */

  /* USER CODE END IWDG_Init 0 */

  /* USER CODE BEGIN IWDG_Init 1 */

  /* USER CODE END IWDG_Init 1 */
  hiwdg.Instance = IWDG;
  hiwdg.Init.Prescaler = IWDG_PRESCALER_256;
  hiwdg.Init.Window = 4095;
  hiwdg.Init.Reload = 3125;
  if (HAL_IWDG_Init(&hiwdg) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN IWDG_Init 2 */

  /* USER CODE END IWDG_Init 2 */

}

/**
  * @brief LPUART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_LPUART1_UART_Init(void)
{

  /* USER CODE BEGIN LPUART1_Init 0 */

  /* USER CODE END LPUART1_Init 0 */

  /* USER CODE BEGIN LPUART1_Init 1 */

  /* USER CODE END LPUART1_Init 1 */
  hlpuart1.Instance = LPUART1;
  hlpuart1.Init.BaudRate = 115200;
  hlpuart1.Init.WordLength = UART_WORDLENGTH_8B;
  hlpuart1.Init.StopBits = UART_STOPBITS_1;
  hlpuart1.Init.Parity = UART_PARITY_NONE;
  hlpuart1.Init.Mode = UART_MODE_TX_RX;
  hlpuart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  hlpuart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  hlpuart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  hlpuart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  hlpuart1.FifoMode = UART_FIFOMODE_DISABLE;
  if (HAL_UART_Init(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&hlpuart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&hlpuart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN LPUART1_Init 2 */

  /* USER CODE END LPUART1_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
void MX_USART1_UART_Init(void)
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
  huart1.Init.OverSampling = UART_OVERSAMPLING_8;
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
  * @brief RF Initialization Function
  * @param None
  * @retval None
  */
static void MX_RF_Init(void)
{

  /* USER CODE BEGIN RF_Init 0 */

  /* USER CODE END RF_Init 0 */

  /* USER CODE BEGIN RF_Init 1 */

  /* USER CODE END RF_Init 1 */
  /* USER CODE BEGIN RF_Init 2 */

  /* USER CODE END RF_Init 2 */

}

/**
  * @brief RNG Initialization Function
  * @param None
  * @retval None
  */
static void MX_RNG_Init(void)
{

  /* USER CODE BEGIN RNG_Init 0 */

  /* USER CODE END RNG_Init 0 */

  /* USER CODE BEGIN RNG_Init 1 */

  /* USER CODE END RNG_Init 1 */
  hrng.Instance = RNG;
  hrng.Init.ClockErrorDetection = RNG_CED_ENABLE;
  if (HAL_RNG_Init(&hrng) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN RNG_Init 2 */

  /* USER CODE END RNG_Init 2 */

}

/**
  * @brief RTC Initialization Function
  * @param None
  * @retval None
  */
static void MX_RTC_Init(void)
{

  /* USER CODE BEGIN RTC_Init 0 */

  /* USER CODE END RTC_Init 0 */

  /* USER CODE BEGIN RTC_Init 1 */

  /* USER CODE END RTC_Init 1 */

  /** Initialize RTC Only
  */
  hrtc.Instance = RTC;
  hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
  hrtc.Init.AsynchPrediv = CFG_RTC_ASYNCH_PRESCALER;
  hrtc.Init.SynchPrediv = CFG_RTC_SYNCH_PRESCALER;
  hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
  hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  hrtc.Init.OutPutRemap = RTC_OUTPUT_REMAP_NONE;
  if (HAL_RTC_Init(&hrtc) != HAL_OK)
  {
    Error_Handler();
  }

  /** Enable the WakeUp
  */
  if (HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, 0, RTC_WAKEUPCLOCK_RTCCLK_DIV16) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN RTC_Init 2 */

  /* USER CODE END RTC_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMAMUX1_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);

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
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();

  /*Configure GPIO pins : PA0 PA15 PA12 PA8
                           PA9 PA6 PA5 PA4 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_15|GPIO_PIN_12|GPIO_PIN_8
                          |GPIO_PIN_9|GPIO_PIN_6|GPIO_PIN_5|GPIO_PIN_4;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PC3 PC2 PC1 PC10
                           PC11 PC12 PC6 PC13
                           PC5 PC4 PC9 PC7
                           PC8 */
  GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_2|GPIO_PIN_1|GPIO_PIN_10
                          |GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_6|GPIO_PIN_13
                          |GPIO_PIN_5|GPIO_PIN_4|GPIO_PIN_9|GPIO_PIN_7
                          |GPIO_PIN_8;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PH3 PH0 PH1 */
  GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_0|GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);

  /*Configure GPIO pins : PB5 PB4 PB3 PB14
                           PB15 PB12 PB1 PB0
                           PB10 PB2 */
  GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_4|GPIO_PIN_3|GPIO_PIN_14
                          |GPIO_PIN_15|GPIO_PIN_12|GPIO_PIN_1|GPIO_PIN_0
                          |GPIO_PIN_10|GPIO_PIN_2;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PD0 PD1 PD14 PD13
                           PD12 PD2 PD4 PD9
                           PD8 PD15 PD10 PD11 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_14|GPIO_PIN_13
                          |GPIO_PIN_12|GPIO_PIN_2|GPIO_PIN_4|GPIO_PIN_9
                          |GPIO_PIN_8|GPIO_PIN_15|GPIO_PIN_10|GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pins : PE4 PE1 PE3 PE2
                           PE0 */
  GPIO_InitStruct.Pin = GPIO_PIN_4|GPIO_PIN_1|GPIO_PIN_3|GPIO_PIN_2
                          |GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

void RTOS_AppConfigureTimerForRuntimeStats() 
{
}

uint32_t RTOS_AppGetRuntimeCounterValueFromISR() 
{
    return HAL_GetTick();
}
/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartCommunication */
/**
  * @brief  Function implementing the Communication thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartCommunication */
void StartCommunication(void *argument)
{
  /* USER CODE BEGIN 5 */

	  /* Initialize BLE and Thread */
	  App_BLE_Init();
	  App_THREAD_Init();

	  /* Start BLE advertising */
	  App_BLE_Adv_Request(APP_BLE_FAST_ADV);

	  /* Thread network start */
	  if (ThreadStackMgr().IsThreadEnabled() == false)
	  {
	    ThreadStackMgr().SetThreadEnabled(true);
	  }
  /* Infinite loop */
	  while (1)
	  {
	    // Optional: Check BLE connection status
	    if (APP_BLE_Get_Server_Connection_Status() == APP_BLE_CONNECTED_SERVER)
	    {
	      ChipLogProgress(NotSpecified, "BLE Device Connected");
	    }

	    osDelay(500);
	  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartSensors */
/**
* @brief Function implementing the Sensors thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSensors */
void StartSensors(void *argument)
{
  /* USER CODE BEGIN StartSensors */

  uint8_t temp_data[3], press_data[3], hum_data[2];
  unsigned char temp_reg = 0xFA;
  unsigned char press_reg = 0xF7;
  unsigned char hum_reg = 0xFD;

  /* Infinite loop */
  while(1)
  {
      /* ===================== TEMPERATURE READ ===================== */
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &temp_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, temp_data, 3, 500);

      int32_t raw_temp = ((int32_t)temp_data[0] << 12) | ((int32_t)temp_data[1] << 4) | (temp_data[2] >> 4);
      float temperature = compensate_temperature(raw_temp);

      osMessageQueuePut(TemperatureHandle, &temperature, 0, osWaitForever);

      /* ===================== PRESSURE READ ===================== */
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &press_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, press_data, 3, 500);

      int32_t raw_press = ((int32_t)press_data[0] << 12) | ((int32_t)press_data[1] << 4) | (press_data[2] >> 4);
      float pressure = compensate_pressure(raw_press);

      osMessageQueuePut(PressureHandle, &pressure, 0, osWaitForever);

      /* ===================== HUMIDITY READ ===================== */
      HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDRESS_L, &hum_reg, 1, 500);
      HAL_I2C_Master_Receive(&hi2c1, DEVICE_ADDRESS_L | 0x01, hum_data, 2, 500);

      int32_t raw_hum = ((int32_t)hum_data[0] << 8) | hum_data[1];
      float humidity = compensate_humidity(raw_hum);

      osMessageQueuePut(HumidityHandle, &humidity, 0, osWaitForever);

      /* ===================== DELAY BEFORE NEXT READ ===================== */
      osDelay(1000); // 1 second delay
  }
  /* USER CODE END StartSensors */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM17 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM17) {
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
