|Code #|Description|Implemented?|LINXx only?|
|----|----|----|----|
|0x0000| Sync Packet        |x||
|0x0001|TODO Flush Linx Connection Buffer|||
|0x0002| Reset|x|x|
|0x0003| Get Device ID     |x||
|0x0004|Get LINX API Version|x||
|0x0005|Get UART Max Baud|x||
|0x0006|Set UART Listener Interface Max Baud|x||
|0x0007|TODO Get Max Packet Size|||
|0x0008| Get DIO Channels|x||
|0x0009| Get AI Channels|x||
|0x000A| Get AO Channels|x||
|0x000B| Get PWM Channels|x||
|0x000C| Get QE Channels|x||
|0x000D| Get UART Channels|x||
|0x000E| Get I2C Channels|x||
|0x000F| Get SPI Channels|x||
|0x0010| Get CAN Channels|x||
|0x0011| Disconnect|x||
|0x0012|Set Device User Id	|x||
|0x0013|Get Device User Id|x||
|0x0014|Set Device Ethernet IP|x||
|0x0015|Get Device Ethernet IP	|x||
|0x0016|Set Device Ethernet Port|x||
|0x0017|Get Device Ethernet Port|x||
|0x0018|Set Device WIFI IP|x||
|0x0019|Get Device WIFI IP	|x||
|0x001A|Set Device WIFI Port|x||
|0x001B|Get Device WIFI Port|x||
|0x001C|Set Device WIFI SSID|x||
|0x001D|Get Device WIFI SSID|x||
|0x001E|Set Device WIFI Security Type|x||
|0x001F|Get Device WIFI Security Type|x||
|0x0020|Set Device WIFI Password|x||
|0x0021|TODO Get Device WIFI Password - Intentionally Not Implemented For Security Reasons.|||
|0x0022|Set Device Max Baud|x||
|0x0023|Get Device Max Baud|x||
|0x0024| Get Device Name|x||
|0x0025| Get Servo Channels|x||
|0x0026 to 0x003F| Reserved|||
||*Digital I/O*|||
|0x0040|TODO Set Pin Mode|||
|0x0041| Digital Write|x||
|0x0042| Digital Read|x||
|0x0043|Write Square Wave|x||
|0x0044|Read Pulse Width|x||
|0x0045 to 0x005F| Reserved|||
||*Analog I/O*|||
|0x0060|Set AI Ref Voltage|x||
|0x0061| Get AI Reference Voltage|x||
|0x0062|TODO Set AI Resolution|||
|0x0063| Get AI Resolution|x|x|
|0x0064| Analog Read|x||
|0x0065| Analog Write|x|x|
|0x0066|Set AO Ref Voltage|||
|0x0067| AO Ref Voltage|x|x|
|0x0068|Set AO Resolution|||
|0x0069| AO Resolution|x|x|
|0x0070 to 0x007F| Reserved|||
||*PWM*|||
|0x0080|TODO PWM Open|||
|0x0081|TODO PWM Set Mode|||
|0x0082|TODO PWM Set Frequency|||
|0x0083|PWM Set Duty Cycle	|x||
|0x0084|TODO PWM Close	|||
|0x0085 to 0x009F| Reserved|||
||*QE*|||
|0x00A0 to 0x00BF| Reserved|||
||*UART*|||
|0x00C0| UART Open|x||
|0x00C1| UART Set Buad Rate|x||
|0x00C2| UART Get Bytes Available|x||
|0x00C3| UART Read|x||
|0x00C4| UART Write|x||
|0x00C5| UART Close|x||
|0x00C6 to 0x00DF| Reserved|||
||*I2C*|||
|0x00E0| I2C Open Master|x||
|0x00E1| I2C Set Speed|x||
|0x00E2| I2C Write|x||
|0x00E3| I2C Read|x||
|0x00E4| I2C Close|x||
|0x00E5 to 0x00FF| Reserved|||
||*SPI*|||
|0x0100| SPI Open Master|x||
|0x0101| SPI Set Bit Order|x||
|0x0102| SPI Set Clock Frequency				|x||
|0x0103| SPI Set Mode|x||
|0x0104|LEGACY - SPI Set Frame Size|||
|0x0105|LEGACY - SPI Set CS Logic Level|||
|0x0106|LEGACY - SPI Set CS Channel|||
|0x0107| SPI Write Read|x||
|0x0108 to 0x01FF| Reserved|||
||*CAN*|||
|0x0120 to 0x013F| Reserved|||
||*SERVO*|||
|0x0140| Servo Init|x||
|0x0141| Servo Set Pulse Width|x||
|0x0142| Servo Close|x||
|0x0143 to 0x015F| Reserved|||
||*WS2812*|||
|0x0160| WS2812 Open|x||
|0x0161| WS2812 Write One Pixel|x||
|0x0162| WS2812 Write N Pixels|x||
|0x0163| WS2812 Refresh|x||
|0x0164| WS2812 Close|x||
|0x0165 to 0x017F| Reserved|||
||*Unused*|||
|0x0180 to 0xF7FF| Reserved|||
||*Board-specific commands*|||
|0xF800 to 0xF8FF| LINXx, Implemented by board|||
|0xF800 to 0xFBFF| Reserved|||
||*Default*|||
|0xFC00 to 0xFFFF|Custom commands|*||