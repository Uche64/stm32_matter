#include "rfm95.h"
#include "aes.h"
#include "cmac.h"
#include "LoRaMacCrypto.h"
#include "main.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

extern SPI_HandleTypeDef hspi2;
extern UART_HandleTypeDef huart1;

#define RFM95_NSS_PORT GPIOD
#define RFM95_NSS_PIN GPIO_PIN_0
#define RFM95_RST_PORT GPIOA
#define RFM95_RST_PIN GPIO_PIN_5

#define RFM95_LONG_RANGE_MODE 0x80
#define RFM95_MODE_SLEEP      0x00
#define RFM95_MODE_STDBY      0x01
#define RFM95_MODE_TX         0x03


void RFM95_Select() { HAL_GPIO_WritePin(RFM95_NSS_PORT, RFM95_NSS_PIN, GPIO_PIN_RESET); }
void RFM95_Unselect() { HAL_GPIO_WritePin(RFM95_NSS_PORT, RFM95_NSS_PIN, GPIO_PIN_SET); }
void RFM95_Reset(void) {
    HAL_GPIO_WritePin(RFM95_RST_PORT, RFM95_RST_PIN, GPIO_PIN_RESET);
    HAL_Delay(10);
    HAL_GPIO_WritePin(RFM95_RST_PORT, RFM95_RST_PIN, GPIO_PIN_SET);
    HAL_Delay(10);
}
void RFM95_Init(void) {
    RFM95_Reset();
    uint8_t version = RFM95_ReadRegister(0x42);
    uint8_t testReg = RFM95_ReadRegister(0x42);  // Version register
    char msg[50];
    sprintf(msg, "RFM95 Version Register: 0x%02X\r\n", testReg);
    HAL_UART_Transmit(&huart1, (uint8_t *)msg, strlen(msg), HAL_MAX_DELAY);

    if (version != 0x12) {
        char msg[] = "ERROR: RFM95 not detected!\r\n";
        HAL_UART_Transmit(&huart1, (uint8_t*)msg, strlen(msg), HAL_MAX_DELAY);
        return;
    } else {
        char msg[] = "RFM95 detected OK!\r\n";
        HAL_UART_Transmit(&huart1, (uint8_t*)msg, strlen(msg), HAL_MAX_DELAY);
    }

    RFM95_SetMode(RFM95_MODE_SLEEP);
    RFM95_WriteRegister(0x1D, 0x72); // BW 125kHz, CR 4/5
    RFM95_WriteRegister(0x1E, 0x74); // SF7, CRC on
    RFM95_WriteRegister(0x26, 0x04); // LowDataRateOptimize off, AGC auto
    RFM95_SetMode(RFM95_MODE_STDBY);
}

void RFM95_SetFrequency(uint32_t freq) {
    uint64_t frf = ((uint64_t)freq << 19) / 32000000;
    RFM95_WriteRegister(0x06, (uint8_t)(frf >> 16));
    RFM95_WriteRegister(0x07, (uint8_t)(frf >> 8));
    RFM95_WriteRegister(0x08, (uint8_t)(frf));
}

void RFM95_SetTxPower(int8_t power) {
    if (power < 2) power = 2;
    if (power > 17) power = 17;
    RFM95_WriteRegister(0x09, (uint8_t)(0x80 | (power - 2))); // PA_BOOST
}

void RFM95_WriteRegister(uint8_t reg, uint8_t value) {
    uint8_t buf[2] = { reg | 0x80, value };
    RFM95_Select();
    HAL_SPI_Transmit(&hspi2, buf, 2, HAL_MAX_DELAY);
    RFM95_Unselect();
}

void RFM95_WriteBuffer(uint8_t reg, uint8_t *buffer, uint8_t size) {
    uint8_t header = reg | 0x80;
    RFM95_Select();
    HAL_SPI_Transmit(&hspi2, &header, 1, HAL_MAX_DELAY);
    HAL_SPI_Transmit(&hspi2, buffer, size, HAL_MAX_DELAY);
    RFM95_Unselect();
}

void RFM95_SetMode(uint8_t mode) {
    RFM95_WriteRegister(0x01, RFM95_LONG_RANGE_MODE | mode);
    HAL_Delay(10);
}

void RFM95_Send(uint8_t *data, uint8_t len) {
    RFM95_SetMode(RFM95_MODE_STDBY);
    RFM95_WriteRegister(0x0D, 0x00); // FIFO addr ptr
    RFM95_WriteBuffer(0x00, data, len); // FIFO
    RFM95_WriteRegister(0x22, len); // Payload length
    RFM95_SetMode(RFM95_MODE_TX);
    while ((RFM95_ReadRegister(0x12) & 0x08) == 0); // Wait for TX done
    RFM95_WriteRegister(0x12, 0x08); // Clear IRQ
}

uint8_t RFM95_ReadRegister(uint8_t reg) {
    uint8_t value;
    reg &= 0x7F;
    RFM95_Select();
    HAL_SPI_Transmit(&hspi2, &reg, 1, HAL_MAX_DELAY);
    HAL_SPI_Receive(&hspi2, &value, 1, HAL_MAX_DELAY);
    RFM95_Unselect();
    return value;
}

uint8_t LoRaWAN_CreatePacket_ABP(uint32_t devAddr, uint8_t *nwkSKey, uint8_t *appSKey,
                                uint8_t *payload, uint8_t payload_len, uint8_t *output_packet,
                                uint32_t frameCounter) {

    uint8_t direction = 0; // Uplink direction
    uint8_t mic[16];      // Buffer for CMAC, only 4 bytes used for MIC
    uint8_t blockA[16];   // Block used for AES CTR encryption
    uint8_t S[16];        // AES encryption block output
    uint8_t i;

    // -----------------------------
    // 1. Build Frame Header
    // -----------------------------
    output_packet[0] = 0x40; // MHDR: Unconfirmed Data Up
    output_packet[1] = (devAddr >> 0) & 0xFF;
    output_packet[2] = (devAddr >> 8) & 0xFF;
    output_packet[3] = (devAddr >> 16) & 0xFF;
    output_packet[4] = (devAddr >> 24) & 0xFF;
    output_packet[5] = 0x00; // FCtrl (No options, ADR=0)
    output_packet[6] = (frameCounter >> 0) & 0xFF;
    output_packet[7] = (frameCounter >> 8) & 0xFF;
    output_packet[8] = 0x01; // FPort = 1 (Application data)

    // -----------------------------
    // 2. Encrypt Payload (AES-128 CTR)
    // -----------------------------
    for (i = 0; i < 16; i++) blockA[i] = 0;
    blockA[0] = 0x01; // LoRaWAN spec
    blockA[5] = (devAddr >> 0) & 0xFF;
    blockA[6] = (devAddr >> 8) & 0xFF;
    blockA[7] = (devAddr >> 16) & 0xFF;
    blockA[8] = (devAddr >> 24) & 0xFF;
    blockA[9] = (frameCounter >> 0) & 0xFF;
    blockA[10] = (frameCounter >> 8) & 0xFF;
    blockA[15] = 0x01; // Block sequence number, start from 1

    uint8_t encrypted_payload[payload_len];
    uint8_t j = 0;

    for (i = 0; i < payload_len; i += 16) {
        aes_encrypt(appSKey, blockA, S); // Encrypt blockA with AppSKey
        uint8_t blockSize = ((payload_len - i) >= 16) ? 16 : (payload_len - i);
        for (j = 0; j < blockSize; j++) {
            encrypted_payload[i + j] = payload[i + j] ^ S[j];
        }
        blockA[15]++; // Increment block counter
    }

    // Copy encrypted payload to output packet
    memcpy(&output_packet[9], encrypted_payload, payload_len);

    // -----------------------------
    // 3. Calculate MIC (AES-CMAC)
    // -----------------------------
    uint8_t B0[16] = { 0 };
    B0[0] = 0x49; // LoRaWAN MIC header for uplink
    B0[5] = (devAddr >> 0) & 0xFF;
    B0[6] = (devAddr >> 8) & 0xFF;
    B0[7] = (devAddr >> 16) & 0xFF;
    B0[8] = (devAddr >> 24) & 0xFF;
    B0[9] = (frameCounter >> 0) & 0xFF;
    B0[10] = (frameCounter >> 8) & 0xFF;
    B0[15] = 9 + payload_len; // length of message

    uint8_t msgForMic[16 + 9 + payload_len];
    memcpy(msgForMic, B0, 16);
    memcpy(msgForMic + 16, output_packet, 9 + payload_len); // header + payload

    //aes_cmac(nwkSKey, msgForMic, 16 + 9 + payload_len, mic); // Generate CMAC
    uint8_t mic_full[16];
    AES_CMAC(nwkSKey, msgForMic, 16 + 9 + payload_len, mic_full);


    // -----------------------------
    // 4. Append MIC (first 4 bytes of CMAC)
    // -----------------------------
    memcpy(output_packet + 9 + payload_len, mic, 4);

    // -----------------------------
    // Return total packet size
    // -----------------------------
    return 9 + payload_len + 4;
}
