Command (LabVIEW to LINX board)

|Byte|Purpose|Notes|
|----|-----|----|
|0|SOF (always 0xFF)||
|1|# bytes in packet||
|2|Packet # MSB ||
|3|Packet # LSB ||
|4| Command MSB||
|5| Command LSB||
|6| Data byte 1|# of data bytes for variable-length data|
|n+6| Data byte n||
|n+7| Checksum||




Response (LINX board to LabVIEW)

|Byte|Purpose|Notes|
|----|----|----|
|0|SOF (always 0xFF)||
|1|# bytes in packet||
|2|Packet # MSB ||
|3|Packet # LSB ||
|4|Status||
|5|Data byte 1|# of data bytes for variable-length data|
|n+4| Data byte n||
|n+5|Checksum||