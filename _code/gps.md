---
layout: code
title: GPS hello world without a fix
description: Test GPS sensor PA1010D with UART without any GPS Fix yet
difficulty: easy
features:
  - gps
  - PA1010D
  - UART
  - TX
  - RX
references:
  - name: CDTop PA1010D GNSS patch antenna module Datasheet V.03
    url: https://drive.google.com/file/d/1O-9RGAwgs2fgtnzJRBa9eB1fAqJt7n_k/view
  - name: Adafruit PA1010D breakout board module
    url: https://www.adafruit.com/product/4415
  - name: Adafruit_GPS
    url: https://github.com/adafruit/Adafruit_GPS
  - name: Adafruit GPS Hardware serial echo test
    url: https://github.com/adafruit/Adafruit_GPS/blob/master/code/GPS_HardwareSerial_EchoTest/GPS_HardwareSerial_EchoTest.ino
images:
  console: gps-console.png
  prototype: gps-prototype.jpg
  schematic: gps-schematic.png
steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---
