/****************************************************************************************
**  LINX - Arduino Zero family
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
#include "LinxZero.h"

/****************************************************************************************
**  Constructors /  Destructor
****************************************************************************************/
LinxZero::LinxZero()
{
	DeviceFamily = 0x10;	//Arduino Zero-like Family Code
	
	//set up flash for NV storage
	if (!EEPROM.isValid()) {
		DebugPrintln("Initializing flash as EEPROM");
		for (int ii=0; ii<(NVS_SERIAL_INTERFACE_MAX_BAUD+2); ii++) {
			EEPROM.write(ii,0x00);
		}

		EEPROM.commit();
	}
}
