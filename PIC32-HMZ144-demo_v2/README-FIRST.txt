This is a demo project for Olimex board PIC32-HMZ144 rev. C (or patched rev. B), based on the demo applications (USB and SDcard) in Microchip Harmony 1.06.01v.

The project demonstrates several features of the board: LED, Button, UART, RTC, SD card, USB.

Build info (tested with):

Integrated development environment:	MPLABX v3.15
Compiler:							XC32 v1.40
Harmony framework:					v1.06.01

You can either build the project and program the board with MPLABX IDE, or use MPIPE and the prebuilt file (PIC32-HMZ144_v2.hex). It is recommended to use the same compiler as the one we used if you decide to compile the project!

If you want to follow the messages on the serial console you can use a USB <-> serial cable with 3.3V levels (like Olimex USB-SERIAL-CABLE-F or BB-CH340T or MOD-USB-RS232) to the UART pins of the UEXT (pin 3 is TX, pin 4 is RX). In order to switch between the different demos push the button.

Upon reset a fast external clock test will be done to ensure that the clock is OK. After that SD card demo would start start. It will read a file on the SD card with the name:

"FILE_TOO_LONG_NAME_EXAMPLE_123.JPG" (make sure you have such file in the card, else the demo program would get stuck at first test). The program would make a copy of that file in a sub-directory named "Dir1". The generated directory and file must not exist prior to the software test (otherwise you will receive an error).

IMPORTANT NOTE: Microchip Harmony Configurator requires write protect pin but on PIC32-HMZ144 board there is no such pin; the one selected by default is used (PORTF1). Since we can't set it to low level, in order to make SD card demo work properly, RF1 should be set as output in low level! If you decide to change it make sure that the new WP pin is also low!

To switch to next demo press user button BUT. After the SD card demo is over you can see LED blinking with 1 Hz frequency controlled by the RTC oscillator.

Then the USB demo gets started – the board would initialize as an USB device (mouse). When you hold the button BUT the mouse cursor will start moving.

On the terminal you can send characters and it will return echo (next symbol) followed by '*'.

Microchip Harmony Configurator (MHC) requires all *.configs available in order to be initialized. But having all of them in the project would make the archive too big. So in the archive are left only the libraries that are necessary for rebuilding. So if you want to change the configurations from MHC you have to copy the project inside the Microchip harmony directory "..\apps\usb\device\" and then open the MHC from MPLABX.

		yyyy/mm/dd
Date:	2016/26/05
Author:	Stanimir Petev, Olimex