/****************************************************************************************	
**  This is example LINX firmware for use with the Feather
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Ken Sharp, modified for Adafruit Feather M0 WiFi by CBC Girard
**
**  BSD2 License.
****************************************************************************************/

// To set network name and password in LabVIEW, comment out the next line
// Otherwise, set your network information in NetworkConfig.h
#define PERMANENT_WIFI

// If previous line uncommented, get network info from .h file
#ifdef PERMANENT_WIFI
#include "NetworkConfig.h"
#endif

//Include All Peripheral Libraries Used By LINX
#include <SPI.h>
#include <Wire.h>
#include <FlashAsEEPROM.h>
#include <Servo.h>
#include <WiFi101.h>

//Include Device Specific Header From Sketch>>Import Library (In This Case LinxAdafruitFeatherM0WiFi.h)
//Also Include Desired LINX Listener From Sketch>>Import Library 
#include <LinxAdafruitFeatherM0WiFi.h>
#include <LinxWiFi101Listener.h>
 
//Create A Pointer To The LINX Device Object We Instantiate In Setup()
LinxAdafruitFeatherM0WiFi* LinxDevice;

//Initialize LINX Device And Listener
void setup()
{
  //Instantiate The LINX Device
  LinxDevice = new LinxAdafruitFeatherM0WiFi();
  
  //The LINX Serial Listener Is Included In WIFI Listener And Pre Instantiated.  This Is Necessary For Configuring Wifi Settings.
  LinxSerialConnection.Start(LinxDevice, 0);
  
#ifndef PERMANENT_WIFI
  //Start Wifi Listener.  Settings (IP, SSID, etc) Will Be Read From Non Volatile Storage And Can Be Set Using LINX VIs Via USB
  LinxWifiConnection.Start(LinxDevice);

#else
  //Start With Fixed IP and Port.  When Using This Method You Cannot Update The IP/Port Using LINX VIs 
  LinxWifiConnection.SetSsid(MY_SSID);
  LinxWifiConnection.SetSecurity(WPA2_PASSPHRASE);  //NONE, WPA2_PASSPHRASE, WPA2_KEY, WEP40, WEO104
  LinxWifiConnection.SetPassphrase(MY_PASSWORD);    			   
  LinxWifiConnection.Start(LinxDevice, 192, 168, 0, 199, 44300);  
#endif

}

void loop()
{
  //Listen For New Packets From LabVIEW
  LinxWifiConnection.CheckForCommands();
  LinxSerialConnection.CheckForCommands();
  
  //Your Code Here, But It will Slow Down The Connection With LabVIEW
}
