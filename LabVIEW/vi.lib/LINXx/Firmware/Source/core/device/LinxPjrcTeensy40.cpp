/****************************************************************************************
**  LINX PJRC Teensy 4.0 code
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff, modified by CBC Girard
**
** BSD2 License.
****************************************************************************************/	

/****************************************************************************************
**  Includes
****************************************************************************************/		
#include <SPI.h>

#include "utility/LinxDevice.h"
#include "utility/LinxWiringDevice.h"
#include "utility/LinxPjrc.h"
#include "LinxPjrcTeensy40.h"

/****************************************************************************************
**  Member Variables
****************************************************************************************/
//System
const unsigned char LinxPjrcTeensy40::m_DeviceName[DEVICE_NAME_LEN] = "PJRC Teensy 4.0";

//AI
const unsigned char LinxPjrcTeensy40::m_AiChans[NUM_AI_CHANS] = {14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27};
const unsigned long LinxPjrcTeensy40::m_AiRefIntVals[NUM_AI_INT_REFS] = {};
const int LinxPjrcTeensy40::m_AiRefCodes[NUM_AI_INT_REFS] = {};

//AO
const unsigned char LinxPjrcTeensy40::m_AoChans[NUM_AO_CHANS]= {};
const unsigned long LinxPjrcTeensy40::m_AoRefIntVals[NUM_AO_INT_REFS] = {};
const int LinxPjrcTeensy40::m_AoRefCodes[NUM_AO_INT_REFS] = {};

//DIGITAL
const unsigned char LinxPjrcTeensy40::m_DigitalChans[NUM_DIGITAL_CHANS] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39}; 

//PWM
const unsigned char LinxPjrcTeensy40::m_PwmChans[NUM_PWM_CHANS] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 18, 19, 22, 23, 24, 25, 28, 29, 33}; 

//QE
//None

//SPI
const unsigned char LinxPjrcTeensy40::m_SpiChans[NUM_SPI_CHANS] = {0, 1, 2};
unsigned long LinxPjrcTeensy40::m_SpiSupportedSpeeds[NUM_SPI_SPEEDS] = {8000000, 4000000, 2000000, 1000000, 500000, 250000, 125000};
int LinxPjrcTeensy40::m_SpiSpeedCodes[NUM_SPI_SPEEDS] = {SPI_CLOCK_DIV2, SPI_CLOCK_DIV4, SPI_CLOCK_DIV8, SPI_CLOCK_DIV16, SPI_CLOCK_DIV32, SPI_CLOCK_DIV64, SPI_CLOCK_DIV128};

//I2C
unsigned char LinxPjrcTeensy40::m_I2cChans[NUM_I2C_CHANS] = {0, 1, 2};
unsigned char LinxPjrcTeensy40::m_I2cRefCount[NUM_I2C_CHANS];			

//UART
unsigned char LinxPjrcTeensy40::m_UartChans[NUM_UART_CHANS] = {0, 1, 2, 3, 4};
unsigned long LinxPjrcTeensy40::m_UartSupportedSpeeds[NUM_UART_SPEEDS] = {300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 40250, 38400, 57600, 115200}; //< @todo verify

//SERVO
Servo* LinxPjrcTeensy40::m_Servos[NUM_SERVO_CHANS] =	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};		//Initialize To Null Pointers

/****************************************************************************************
**  Constructors /  Destructor
****************************************************************************************/
LinxPjrcTeensy40::LinxPjrcTeensy40()
{
	//Family ID Set At Family Level
	DeviceId = 0x10;	//Teensy 4.0
	DeviceNameLen = DEVICE_NAME_LEN;	 
	DeviceName =  m_DeviceName;

	//LINX API Version
	LinxApiMajor = 3;
	LinxApiMinor = 0;
	LinxApiSubminor = 0;
	
	//DIGITAL
	NumDigitalChans = NUM_DIGITAL_CHANS;			
	DigitalChans = m_DigitalChans;
		
	//AI
	NumAiChans = NUM_AI_CHANS;
	AiChans = m_AiChans;
	AiResolution = AI_RES_BITS;
	AiRefSet = AI_REFV;
	analogReadResolution(AiResolution);
		
	AiRefDefault = AI_REFV;
	AiRefSet = AI_REFV;
	AiRefCodes = m_AiRefCodes;
	
	NumAiRefIntVals = NUM_AI_INT_REFS;
	AiRefIntVals = m_AiRefIntVals;
	
	AiRefExtMin = 0;
	AiRefExtMax = 3300000;
	
	//AO
	NumAoChans = NUM_AO_CHANS;
	AoChans = m_AoChans;
	AoResolution=AO_RES_BITS;
	AoRefSet=AO_REFV;
	analogWriteResolution(AoResolution);

	AoRefDefault=AO_REFV;
	AoRefSet=AO_REFV;
	AoRefCodes=m_AoRefCodes;

	NumAoRefIntVals=NUM_AO_INT_REFS;
	AoRefIntVals=m_AoRefIntVals;

	AoRefExtMin=0;
	AoRefExtMax=3300000;
	
	//PWM
	NumPwmChans = NUM_PWM_CHANS;
	PwmChans = m_PwmChans;
	
	//QE
	NumQeChans = 0;
	QeChans = 0;
	
	
	//UART
	NumUartChans = NUM_UART_CHANS;
	UartChans = m_UartChans;	
	UartMaxBaud = m_UartSupportedSpeeds[NUM_UART_SPEEDS - 1];
	NumUartSpeeds = NUM_UART_SPEEDS;
	UartSupportedSpeeds = m_UartSupportedSpeeds;

	//I2C
	NumI2cChans = NUM_I2C_CHANS;	
	I2cChans = m_I2cChans;
	I2cRefCount = m_I2cRefCount;
		
	//SPI
	NumSpiChans = NUM_SPI_CHANS;	
	SpiChans = m_SpiChans;		
	NumSpiSpeeds = NUM_SPI_SPEEDS;
	SpiSupportedSpeeds = m_SpiSupportedSpeeds;
	SpiSpeedCodes = m_SpiSpeedCodes;
		
	//CAN
	NumCanChans = 0;
	CanChans = 0;
	
	//SERVO
	NumServoChans = NUM_SERVO_CHANS;	
	ServoChans = m_DigitalChans;
	Servos = m_Servos;
	
	//If Debuging Is Enabled Call EnableDebug()
	#if DEBUG_ENABLED > 0
		EnableDebug(DEBUG_ENABLED);
	#endif
}

//Destructor
LinxPjrcTeensy40::~LinxPjrcTeensy40()
{
	//Handle Any Device Clean Up Here.
	//UartClose();
}

/****************************************************************************************
**  Functions
****************************************************************************************/

int LinxPjrcTeensy40::BoardCommands(unsigned char command, unsigned char numInputBytes, unsigned char* input, unsigned char* numResponseBytes, unsigned char* response){
	int status=L_OK;

	switch (command) {
		case 0x00:// 
		status=L_FUNCTION_NOT_SUPPORTED;
		break;
		// case 0x01:// 
		// break;
		// case 0x00://
		// break;
		// case 0x00://
		// break;
		// case 0x00://
		// break;
		// case 0x00://
		// break;
		// case 0x00://
		// break;
		default:
		status=L_FUNCTION_NOT_SUPPORTED;
	}
	return status;
}

int LinxPjrcTeensy40::Reset(ResetWhat target) {
	int status=L_FUNCTION_NOT_SUPPORTED;
	switch (target) {
		case LRESET_ALL:
		/** @todo Find reset method for 4.x series */
		// ResetTarget=LRESET_NONE;
		// //snippet source below
		// // From http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0337e/Cihcbadd.html
		// // Search for "0xE000ED0C"
		// // Original question http://forum.pjrc.com/threads/24304-_reboot_Teensyduino%28%29-vs-_restart_Teensyduino%28%29?p=35981#post35981
		
		// //give time for any USB activity to finish
		// delay(250);

		// // Should restart Teensy 3, will also disconnect USB during restart
		// // 0000101111110100000000000000100
		// // Assert [2]SYSRESETREQ
		// *(uint32_t *)0xE00EDC0C=0x5FA0004;

		break;
		case LRESET_TCP:
		ResetTarget=target;
		status=L_OK;
		break;
		default:
		ResetTarget=LRESET_NONE;
	}
	return status;
}