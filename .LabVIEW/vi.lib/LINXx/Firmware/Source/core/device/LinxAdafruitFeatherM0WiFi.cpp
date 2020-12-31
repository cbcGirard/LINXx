/****************************************************************************************
**  LINX AdafruitFeatherM0 code
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Modified from Sam Kristoff's library by CBC Girard
**
** BSD2 License.
****************************************************************************************/	

/****************************************************************************************
**  Includes
****************************************************************************************/		
#include <SPI.h>

#include "utility/LinxDevice.h"
#include "utility/LinxWiringDevice.h"
#include "utility/LinxZero.h"
#include "LinxAdafruitFeatherM0WiFi.h"

/****************************************************************************************
**  Member Variables
****************************************************************************************/
//System
const unsigned char LinxAdafruitFeatherM0WiFi::m_DeviceName[DEVICE_NAME_LEN] = "Adafruit Feather M0 Wifi";

//AI
const unsigned char LinxAdafruitFeatherM0WiFi::m_AiChans[NUM_AI_CHANS] = {14, 15, 16, 17, 18, 19, 9}; 
const unsigned long LinxAdafruitFeatherM0WiFi::m_AiRefIntVals[NUM_AI_INT_REFS] = {};
const int LinxAdafruitFeatherM0WiFi::m_AiRefCodes[NUM_AI_INT_REFS] = {};

//AO
const unsigned char LinxAdafruitFeatherM0WiFi::m_AoChans[NUM_AO_CHANS]= {14};
const unsigned long LinxAdafruitFeatherM0WiFi::m_AoRefIntVals[NUM_AO_INT_REFS]= {};
const int LinxAdafruitFeatherM0WiFi::m_AoRefCodes[NUM_AO_INT_REFS]={};

//DIGITAL
const unsigned char LinxAdafruitFeatherM0WiFi::m_DigitalChans[NUM_DIGITAL_CHANS] = {0, 1, 5, 6, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24}; 

//PWM
const unsigned char LinxAdafruitFeatherM0WiFi::m_PwmChans[NUM_PWM_CHANS] = {5, 6, 9, 10, 11, 12, 13}; 

//QE
//None

//SPI
const unsigned char LinxAdafruitFeatherM0WiFi::m_SpiChans[NUM_SPI_CHANS] = {0};
unsigned long LinxAdafruitFeatherM0WiFi::m_SpiSupportedSpeeds[NUM_SPI_SPEEDS] = {8000000, 4000000, 2000000, 1000000, 500000, 250000, 125000};
int LinxAdafruitFeatherM0WiFi::m_SpiSpeedCodes[NUM_SPI_SPEEDS] = {SPI_CLOCK_DIV2, SPI_CLOCK_DIV4, SPI_CLOCK_DIV8, SPI_CLOCK_DIV16, SPI_CLOCK_DIV32, SPI_CLOCK_DIV64, SPI_CLOCK_DIV128};

//I2C
unsigned char LinxAdafruitFeatherM0WiFi::m_I2cChans[NUM_I2C_CHANS] = {0, 1};
unsigned char LinxAdafruitFeatherM0WiFi::m_I2cRefCount[NUM_I2C_CHANS];			

//UART
unsigned char LinxAdafruitFeatherM0WiFi::m_UartChans[NUM_UART_CHANS] = {0,1};
unsigned long LinxAdafruitFeatherM0WiFi::m_UartSupportedSpeeds[NUM_UART_SPEEDS] = {300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 31250, 38400, 57600, 115200};

//SERVO
Servo* LinxAdafruitFeatherM0WiFi::m_Servos[NUM_SERVO_CHANS] =	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};		//Initialize To Null Pointers

/****************************************************************************************
**  Constructors /  Destructor
****************************************************************************************/
LinxAdafruitFeatherM0WiFi::LinxAdafruitFeatherM0WiFi()
{
	WifiStatus=WL_IDLE_STATUS;
	//Family ID Set At Family Level
	DeviceId = 0xFF;	//temp
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
	analogReadResolution(AiResolution);

	AiRefSet = AI_REFV;
		
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
	analogWriteResolution(AoResolution);
	AoRefSet=AO_REFV;

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
	#if DEBUG_ENABLED >= 0
		EnableDebug(DEBUG_ENABLED);
	#endif
}

//Destructor
LinxAdafruitFeatherM0WiFi::~LinxAdafruitFeatherM0WiFi()
{
	//Handle Any Device Clean Up Here.
	//UartClose();
}

/****************************************************************************************
**  Functions
****************************************************************************************/

void LinxAdafruitFeatherM0WiFi::HandleNVM(void) {
	int tnow=millis();
	if (tnow<_sinceLastNVMEWrite) {
		//timer overflowed
		_sinceLastNVMEWrite=0;
	}
	if (tnow-_sinceLastNVMEWrite>1000) {
		EEPROM.commit();
	}

}

void LinxAdafruitFeatherM0WiFi::NonVolatileWrite(int address, unsigned char data) {
	EEPROM.write(address,data);

	// update time of write
	_sinceLastNVMEWrite=millis();
}

int LinxAdafruitFeatherM0WiFi::BoardCommands(unsigned char command, unsigned char numInputBytes, unsigned char* input, unsigned char* numResponseBytes, unsigned char* response){
	int status=L_OK;

	switch (command) {
		case 0x00:// get WiFi connection status
		*numResponseBytes=1;
		*response=WiFi.status();
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

int LinxAdafruitFeatherM0WiFi::Reset(ResetWhat target) {
	int status=L_FUNCTION_NOT_SUPPORTED;
	switch (target) {
		case LRESET_ALL:
		ResetTarget=LRESET_NONE;
		NVIC_SystemReset();
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