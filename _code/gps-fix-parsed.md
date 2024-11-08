---
layout: code
title: GPS fix with parsed lat-long
description: Display the parsed NMEA string information on the serial console after a successful GPS fix
difficulty: medium
features:
  - gps
  - PA1010D
  - UART
  - TX
  - RX
  - fix
dependancies:
  - name: Adafruit GPS
    url: https://github.com/adafruit/Adafruit_GPS
references:
  - name: CDTop PA1010D GNSS patch antenna module Datasheet V.03
    url: https://drive.google.com/file/d/1O-9RGAwgs2fgtnzJRBa9eB1fAqJt7n_k/view
  - name: Adafruit PA1010D breakout board module
    url: https://www.adafruit.com/product/4415
  - name: Adafruit_GPS
    url: https://github.com/adafruit/Adafruit_GPS
  - name: Adafruit GPS Hardware serial parsing
    url: https://github.com/adafruit/Adafruit_GPS/blob/master/code/GPS_HardwareSerial_Parsing/GPS_HardwareSerial_Parsing.ino
images:
  console: gps-fix-parsed-console.png
  prototype: gps-fix-prototype.jpg
  schematic: gps-schematic.png
steps:
  - step: Ensure you have access to open skies for a GPS fix
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
  - step: Start the serial monitor
photos:
  - filename: gps-fix-pps-prototype.jpg
---

Ensure you have access to the open skies for a potential GPS fix.

When the serial console shows the latitude and longitude information, the `PPS` Red LED should also blink once per second.
