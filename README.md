# LINXx: Extensions to the [LINX toolkit](https://github.com/MakerHub/LINX)
 
LabVIEW seemed grumpy when I tried to modify the original repo, so I decided to make an add-on package instead.
 
## Features
- Support for more boards (Adafruit Feather M0, Teensy LC/4.0)
- True analog output for boards with DAC
- Minor optimizations and conveniences
- Won't screw up your main LINX library!

## Basic use
- Download the .vip file in the Releases section, and open the file with VI Package Manager (VIPM)
- Click through the installation process in VIPM
	- If you get any errors about packages that did not install, search for the packages in VIPM and install them manually, then try to reinstall the LINXx packages
- In LabVIEW, select Tools>LINXx>InstallArduinoLibs
	- Make sure the path matches what you see in the Arduino IDE under File>Properties>Sketchbook location
	- Press Copy libraries
- Find a suitable sketch under Arduino's Examples>LINX and upload it to your boards
- Have fun controlling your board from LabVIEW!

## Extending the extension
Additional documentation of the Arduino firmware at [cbcGirard.github.io/LINXx](https://cbcGirard.github.io/LINXx)

If you modify this toolkit and want to share your own version, open the .vipb file with VIPM and build the package