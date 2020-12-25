/****************************************************************************************	
**  This is example LINX firmware for use with the PJRC Teensy 3.1 with the serial 
**  interface enabled.
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff, modified for Adafruit Feather M0 WiFi by CBC Girard
**
**  BSD2 License.
****************************************************************************************/

//Include All Peripheral Libraries Used By LINX
#include <SPI.h>
#include <Wire.h>
#include <FlashAsEEPROM.h>
#include <Servo.h>

//Include Device Specific Header From Sketch>>Import Library (In This Case LinxChipkitMax32.h)
//Also Include Desired LINX Listener From Sketch>>Import Library (In This Case LinxSerialListener.h)
#include <LinxAdafruitFeatherM0WiFi.h>
#include <LinxSerialListener.h>
 
//Create A Pointer To The LINX Device Object We Instantiate In Setup()
LinxAdafruitFeatherM0WiFi* LinxDevice;

//Initialize LINX Device And Listener
void setup()
{
  //Instantiate The LINX Device
  LinxDevice = new LinxAdafruitFeatherM0WiFi();
  
  //The LINXT Listener Is Pre Instantiated, Call Start And Pass A Pointer To The LINX Device And The UART Channel To Listen On
  LinxSerialConnection.Start(LinxDevice, 0);  
  LinxSerialConnection.AttachCustomCommand(0,swell)
}

void loop()
{
  //Listen For New Packets From LabVIEW
  LinxSerialConnection.CheckForCommands();
  
  //Your Code Here, But It will Slow Down The Connection With LabVIEW
}


// Example of a custom command. Changes the LED voltage level
int swell(unsigned char numInputBytes, unsigned char* input, unsigned char* numResponseBytes, unsigned char* response) {
    int stepTime=20;


    // make sure we receive the expected # of bytes
    if (numResponseBytes!=2) {
        return 1; //indicate an error and leave function
    }

    // Get the values from LabVIEW: number of voltage steps and spacing
    int swellTime=(input[0]<<8)||(input[1]);
    int swellStep=stepTime;
    int numSteps=255/swellStep;

    //Step through voltage levels
    for (int ii=0; ii<numSteps; ii++) {
        //change voltage level and wait
        analogWrite(13,ii*swellStep);
        delay(stepTime);

        //respond with voltage level at that time
        response[ii]=ii*swellStep;
    }



    //Tell how many bytes of data to send
    *numResponseBytes=numSteps;   
    
    return 0; //0 means success; other values indicate error
}