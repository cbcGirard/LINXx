# Command Codes {#CommandTable}
|Implemented?|LINXx only?|Code|Description|
|----|----|----|----|
|||*0x0000 - 0x003F*|**SYSTEM COMMANDS**|
|x||0x0000| Sync Packet|
|||0x0001| Flush Linx Connection Buffer|
|x|x|0x0002| Reset|
|x||0x0003| Get Device ID     |
|x||0x0004|Get LINX API Version|
|x||0x0005|Get UART Max Baud|
|x||0x0006|Set UART Listener Interface Max Baud|
|x|x|0x0007| Get Max Packet Size|
|x||0x0008| Get DIO Channels|
|x||0x0009| Get AI Channels|
|x||0x000A| Get AO Channels|
|x||0x000B| Get PWM Channels|
|x||0x000C| Get QE Channels|
|x||0x000D| Get UART Channels|
|x||0x000E| Get I2C Channels|
|x||0x000F| Get SPI Channels|
|x||0x0010| Get CAN Channels|
|x||0x0011| Disconnect|
|x||0x0012|Set Device User Id	|
|x||0x0013|Get Device User Id|
|x||0x0014|Set Device Ethernet IP|
|x||0x0015|Get Device Ethernet IP	|
|x||0x0016|Set Device Ethernet Port|
|x||0x0017|Get Device Ethernet Port|
|x||0x0018|Set Device WIFI IP|
|x||0x0019|Get Device WIFI IP	|
|x||0x001A|Set Device WIFI Port|
|x||0x001B|Get Device WIFI Port|
|x||0x001C|Set Device WIFI SSID|
|x||0x001D|Get Device WIFI SSID|
|x||0x001E|Set Device WIFI Security Type|
|x||0x001F|Get Device WIFI Security Type|
|x||0x0020|Set Device WIFI Password|
|||0x0021|Get Device WIFI Password - Intentionally Not Implemented For Security Reasons.|
|x||0x0022|Set Device Max Baud|
|x||0x0023|Get Device Max Baud|
|x||0x0024| Get Device Name|
|x||0x0025| Get Servo Channels|
|x|x|0x0026| Get WiFi status|
|||0x0027 to 0x003F| Reserved|
|||*0x0040 - 0x005F*|**Digital I/O**|
|||0x0040| Set Pin Mode|
|x||0x0041| Digital Write|
|x||0x0042| Digital Read|
|x||0x0043|Write Square Wave|
|x||0x0044|Read Pulse Width|
|||0x0045 to 0x005F| Reserved|
|||*0x0060 - 0x007F*|**Analog I/O**|
|x||0x0060|Set AI Ref Voltage|
|x||0x0061| Get AI Reference Voltage|
|||0x0062| Set AI Resolution|
|x|x|0x0063| Get AI Resolution|
|x||0x0064| Analog Read|
|x|x|0x0065| Analog Write|
|||0x0066|Set AO Ref Voltage|
|x|x|0x0067| AO Ref Voltage|
|||0x0068|Set AO Resolution|
|x|x|0x0069| AO Resolution|
|||0x0070 to 0x007F| Reserved|
|||*0x0080 - 0x009F*|**PWM**|
|||0x0080| PWM Open|
|||0x0081| PWM Set Mode|
|||0x0082| PWM Set Frequency|
|x||0x0083|PWM Set Duty Cycle	|
|||0x0084| PWM Close	|
|||0x0085 to 0x009F| Reserved|
|||*0x00A0 - 0x00BF*|**QE**|
|||0x00A0 to 0x00BF| Reserved|
|||*0x00C0 - 0x00DF*|**UART**|
|x||0x00C0| UART Open|
|x||0x00C1| UART Set Buad Rate|
|x||0x00C2| UART Get Bytes Available|
|x||0x00C3| UART Read|
|x||0x00C4| UART Write|
|x||0x00C5| UART Close|
|||0x00C6 to 0x00DF| Reserved|
|||*0x00E0 - 0x00FF*|**I2C**|
|x||0x00E0| I2C Open Master|
|x||0x00E1| I2C Set Speed|
|x||0x00E2| I2C Write|
|x||0x00E3| I2C Read|
|x||0x00E4| I2C Close|
|||0x00E5 to 0x00FF| Reserved|
|||*0x0100 - 0x011F*|**SPI**|
|x||0x0100| SPI Open Master|
|x||0x0101| SPI Set Bit Order|
|x||0x0102| SPI Set Clock Frequency				|
|x||0x0103| SPI Set Mode|
|||0x0104|LEGACY - SPI Set Frame Size|
|||0x0105|LEGACY - SPI Set CS Logic Level|
|||0x0106|LEGACY - SPI Set CS Channel|
|x||0x0107| SPI Write Read|
|||0x0108 to 0x011F| Reserved|
|||*0x0120 - 0x013F*|**CAN**|
|||0x0120 to 0x013F| Reserved|
|||*0x0140 - 0x015F*|**SERVO**|
|x||0x0140| Servo Init|
|x||0x0141| Servo Set Pulse Width|
|x||0x0142| Servo Close|
|||0x0143 to 0x015F| Reserved|
|||*0x0160 - 0x017F*|**WS2812**|
|x||0x0160| WS2812 Open|
|x||0x0161| WS2812 Write One Pixel|
|x||0x0162| WS2812 Write N Pixels|
|x||0x0163| WS2812 Refresh|
|x||0x0164| WS2812 Close|
|||0x0165 to 0x017F| Reserved|
|||*0x0180 - 0x11FF*|**Unused**|
|||0x0180 to 0x11FF| Reserved|
|||*0x2000 - 0x2FFF*|**Buffer functions**|
|||0x2000 to 0x2FFF| Reserved|
|||*0x4000 - 0x4FFF*|**Task API**|
|||0x4000 to 0x4FFF| Reserved|
|||*0x5000 - 0xF7FF*|**Unused**|
|||0x5000 to 0xF7FF| Reserved|
|||*0xF800 - 0xFBFF*|**Board-specific commands**|
|||0xF800 to 0xF8FF| LINXx, Implemented by board|
|||*0xFC00 - 0xFFFF*|**User commands**|
