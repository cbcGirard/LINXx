/****************************************************************************************
**  LINX header for AdafruitFeatherM0
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff, modified by CBC Girard
**
** BSD2 License.
****************************************************************************************/	

#ifndef LINX_ADAFRUIT_FEATHERM0WIFI_H
#define LINX_ADAFRUIT_FEATHERM0WIFI_H

/****************************************************************************************
**  Defines
****************************************************************************************/	
#define DEVICE_NAME_LEN 25

#define NUM_AI_CHANS 7
#define AI_RES_BITS 12
#define AI_REFV 3300000
#define NUM_AI_INT_REFS 0

#define NUM_AO_CHANS 1
#define AO_RES_BITS 10
#define AO_REFV 3300000
#define NUM_AO_INT_REFS 0

#define NUM_DIGITAL_CHANS 20

#define NUM_PWM_CHANS 7

#define NUM_SPI_CHANS 1
#define NUM_SPI_SPEEDS 7

#define NUM_I2C_CHANS 2

#define NUM_UART_CHANS 2
#define NUM_UART_SPEEDS 13

#define NUM_SERVO_CHANS NUM_DIGITAL_CHANS

/****************************************************************************************
**  Includes
****************************************************************************************/	
#include "utility/LinxDevice.h"
#include "utility/LinxWiringDevice.h"
#include "utility/LinxZero.h"
#include "WiFi101.h"
	
class LinxAdafruitFeatherM0WiFi : public LinxZero
{
	public:	
		/****************************************************************************************
		**  Variables
		****************************************************************************************/		
		//System
		static const unsigned char m_DeviceName[DEVICE_NAME_LEN];
		
		//AI
		static const unsigned char m_AiChans[NUM_AI_CHANS];
		static const unsigned long m_AiRefIntVals[NUM_AI_INT_REFS];
		static const int m_AiRefCodes[NUM_AI_INT_REFS];
		
		//AO
		static const unsigned char m_AoChans[NUM_AO_CHANS];
		static const unsigned long m_AoRefIntVals[NUM_AO_INT_REFS];
		static const int m_AoRefCodes[NUM_AO_INT_REFS];
		
		//DIGITAL
		static const unsigned char m_DigitalChans[NUM_DIGITAL_CHANS];	
		
		//PWM
		static const unsigned char m_PwmChans[NUM_PWM_CHANS];			
		
		//SPI
		static const unsigned char m_SpiChans[NUM_SPI_CHANS];
		static unsigned long m_SpiSupportedSpeeds[NUM_SPI_SPEEDS];
		static int m_SpiSpeedCodes[NUM_SPI_SPEEDS];
		
		//I2C
		static unsigned char m_I2cChans[NUM_I2C_CHANS];
		static unsigned char m_I2cRefCount[NUM_I2C_CHANS];						
		
		//UART
		static unsigned char m_UartChans[NUM_UART_CHANS];
		static unsigned long m_UartSupportedSpeeds[NUM_UART_SPEEDS];
		
		//Servo		
		static const unsigned char m_ServoChans[NUM_SERVO_CHANS];
		static Servo* m_Servos[NUM_SERVO_CHANS];
		
		/****************************************************************************************
		**  Constructors /  Destructor
		****************************************************************************************/
		LinxAdafruitFeatherM0WiFi();
		
		~LinxAdafruitFeatherM0WiFi();
			
		/****************************************************************************************
		**  Functions
		****************************************************************************************/
		
		void HandleNVM(void);

		// overload these

		void NonVolatileWrite(int address, unsigned char data);		
		int BoardCommands(unsigned char command, unsigned char numInputBytes, unsigned char* input, unsigned char* numResponseBytes, unsigned char* response);
		int Reset(ResetWhat target);
	private:
		/****************************************************************************************
		**  Variables
		****************************************************************************************/		
			int _sinceLastNVMEWrite=__INT32_MAX__;
		
		/****************************************************************************************
		**  Functions
		****************************************************************************************/
		
		
};


#endif //LINX_ADAFRUIT_FEATHERM0WIFI_H
