# STM32 Matter Repository

## Overview
This repository contains multiple implementations of **BME280 sensor integration** using STM32WB5MM-DK and Matter over Thread. The projects range from a **basic UART-based sensor reader**, an **RTOS-based task scheduler**, to a **fully functional Matter-enabled IoT device**.

## Projects in This Repository
### 1️. **BME280 Sensor Read via UART**
- Basic implementation using **HAL** (Hardware Abstraction Layer).
- Reads **temperature, pressure, and humidity** from **BME280**.
- Outputs data via **UART (printf)** for debugging.

### 2️. **RTOS-Based BME280 Sensor App**
- Uses **FreeRTOS** to manage **3 separate tasks**:
  - **Temperature Task** (Priority = Normal)
  - **Pressure Task** (Priority = Below Normal)
  - **Humidity Task** (Priority = Low)
- Data can be processed and sent via UART.

### 3️. **Matter over Thread BME280 App**
- Fully Matter-compliant IoT device.
- Communicates over **Thread network**.
- Supports commissioning via **CHIPTool**.
- Implements **Matter clusters**:
  - Temperature Measurement
  - Pressure Measurement
  - Humidity Measurement
  
##  **Repository Structure**
- BME280: Transmit and Receive BME280 Sensor Data.
- BME280_RTOS: Uses a Real-Time Operating system to create tasks for each sensor data with different priority levels.
- BME280-App: Fully integrated Matter-over-Thread app.

#
## Additional Documentation
For a **step-by-step guide**, please look at the **[full project documentation]([BME280_App/BME280-App/Documentation.md](https://github.com/Uche64/stm32_matter/blob/a63063a8252a739769655c300465301effe61d3b/BME280_App/BME280-App/Documentation.md))** in this repository.

## License
This project is licensed under **STMicroelectronics License**. See [LICENSE](LICENSE) for details.

## Support & Resources
- **Matter Wiki**: [STMicroelectronics Matter](https://wiki.st.com/stm32mcu/wiki/Category:Matter)
- **STM32CubeIDE**: [Download Here](https://www.st.com/en/development-tools/stm32cubeide.html)
- **Matter Standard**: [CSA Matter](https://csa-iot.org/all-solutions/matter/)
- **CHIPTool**: [GitHub CHIPTool](https://github.com/project-chip/connectedhomeip)

---
**Developed with STM32 & Matter!**


