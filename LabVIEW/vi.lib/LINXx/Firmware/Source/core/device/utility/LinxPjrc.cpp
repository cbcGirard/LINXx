/****************************************************************************************
**  LINX - PJRC family
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff
**
** BSD2 License.
****************************************************************************************/		

/****************************************************************************************
**  Includes
****************************************************************************************/
#include "LinxPjrc.h"

/****************************************************************************************
**  Constructors /  Destructor
****************************************************************************************/
LinxPjrc::LinxPjrc()
{
	DeviceFamily = 0x03;	//PJRC Family Code
}

/**
 * @brief Override to skip USB serial packet buffering
 * 
 * @param channel 
 * @param numBytes 
 * @param sendBuffer 
 * @return int 
 * 
 * @details PJRC's USB stack does not transmit until buffer is full, slowing response; 
 * this override triggers immediate send for lower latency 
 */
int LinxPjrc::UartWrite(unsigned char channel, unsigned char numBytes, unsigned char* sendBuffer) {
	LinxWiringDevice::UartWrite(channel, numBytes,sendBuffer);
	if (channel==0){
		Serial.send_now();
	}
}