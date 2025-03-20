/*
 * rfm95w.h
 *
 *  Created on: Mar 11, 2025
 *      Author: Windows
 */

#ifndef INC_RFM95_H_
#define INC_RFM95_H_

#include "main.h"  // Include HAL drivers
#include <stdint.h>


// ==== Register Addresses ====
#define RFM95_REG_FIFO             0x00
#define RFM95_REG_OP_MODE          0x01
#define RFM95_REG_FRF_MSB          0x06
#define RFM95_REG_FRF_MID          0x07
#define RFM95_REG_FRF_LSB          0x08
#define RFM95_REG_PA_CONFIG        0x09
#define RFM95_REG_FIFO_ADDR_PTR    0x0D
#define RFM95_REG_PAYLOAD_LENGTH   0x22
#define RFM95_REG_IRQ_FLAGS        0x12
#define RFM95_REG_MODEM_CONFIG1    0x1D
#define RFM95_REG_MODEM_CONFIG2    0x1E
#define RFM95_REG_MODEM_CONFIG3    0x26
#define RFM95_REG_VERSION          0x42


// ==== LoRa Modes ====
#define RFM95_MODE_SLEEP              0x00
#define RFM95_MODE_STDBY              0x01
#define RFM95_MODE_TX                 0x03
#define RFM95_MODE_RX_CONTINUOUS      0x05
#define RFM95_MODE_RX_SINGLE          0x06
#define RFM95_LONG_RANGE_MODE         0x80 // Bit7 set to enable LoRa mode

// ==== IRQ Masks ====
#define RFM95_IRQ_TX_DONE_MASK        0x08
#define RFM95_IRQ_RX_DONE_MASK        0x40

// ==== Functions Prototypes ====
void RFM95_Init(void);
void RFM95_Reset(void);
void RFM95_SetFrequency(uint32_t freq);
void RFM95_SetTxPower(int8_t power);
void RFM95_SetMode(uint8_t mode);
void RFM95_Send(uint8_t *data, uint8_t len);
void RFM95_WriteRegister(uint8_t reg, uint8_t value);
void RFM95_WriteBuffer(uint8_t reg, uint8_t *buffer, uint8_t size);
uint8_t RFM95_ReadRegister(uint8_t reg);
uint8_t LoRaWAN_CreatePacket_ABP(uint32_t devAddr, uint8_t *nwkSKey, uint8_t *appSKey,
                                uint8_t *payload, uint8_t payload_len, uint8_t *output_packet,
                                uint32_t frameCounter);

#endif /* INC_RFM95_H_ */

