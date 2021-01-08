/****************************************************************************************	
**  This is example LINX firmware for use with the Adafruit Feather M0 with the serial 
**  interface enabled.
**
**  For any other LINX board, just change each Feather reference (header and LinxDevice 
**  creation) to match your board.
**  
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff, modified for Adafruit Feather M0 WiFi by CBC Girard
**
**  BSD2 License.
****************************************************************************************/

//Include All Peripheral Libraries Used By LINX

#ifndef ARDUINO_H
#include <Arduino.h> //for PlatformIO compatibility
#endif

#include <SPI.h>
#include <Wire.h>
#include <FlashAsEEPROM.h>
#include <Servo.h>

//Include Device Specific Header From Sketch>>Import Library (In This Case LinxAdafruitFeatherM0WiFi.h)
//Also Include Desired LINX Listener From Sketch>>Import Library (In This Case LinxSerialListener.h)
#include <LinxAdafruitFeatherM0WiFi.h>
#include <LinxSerialListener.h>
 
//Create A Pointer To The LINX Device Object We Instantiate In Setup()
LinxAdafruitFeatherM0WiFi* LinxDevice;

/* Example of a custom command. Swells LED from off to on over a given number of ms

    All custom commands must have the same signature, i.e., the name of the function
    will be different, but the number and type of variables are the same
*/

//Initialize LINX Device And Listener
void setup()
{
  //Instantiate The LINX Device
  LinxDevice = new LinxAdafruitFeatherM0WiFi();
  
  //The LINXT Listener Is Pre Instantiated, Call Start And Pass A Pointer To The LINX Device And The UART Channel To Listen On
  LinxSerialConnection.Start(LinxDevice, 0);  
  LinxSerialConnection.AttachCustomCommand(0,swell);
}

void loop()
{
  //Listen For New Packets From LabVIEW
  LinxSerialConnection.CheckForCommands();
  
  //Your Code Here, But It will Slow Down The Connection With LabVIEW
}


int swell(unsigned char numInputBytes, unsigned char* input, unsigned char* numResponseBytes, unsigned char* response) {
    int stepTime=20;


    // make sure we receive the expected # of bytes from LV
    if (numInputBytes!=2) {
        return 1; //indicate an error and leave function
    }

    // Get the values from LabVIEW: number of voltage steps and spacing
    int swellTime=(((uint16_t) input[0])<<8)|(input[1]);

    //Do some math to see how many times we change the pwm
    int numSteps=swellTime/stepTime;
    int swellStep=255/numSteps;

    //Step through voltage levels
    for (int ii=0; ii<numSteps; ii++) {
        //change voltage level and wait
        analogWrite(13,ii*swellStep);
        delay(stepTime);

        //also, add the value of the PWM setting to the response buffer
        // so LV can plot it
        response[ii]=ii*swellStep;
    }

    //Tell how many bytes of data to send
    *numResponseBytes=numSteps;   
    
    return 0; //0 means success; other values indicate error
    // the LINX firmware will automatically send the message back to LV
}
