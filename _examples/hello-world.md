---
layout: example
title: Hello world blinky
description: Hello world with Blinky LED
references:
  - name: Arduino CLI
    url: https://arduino.github.io/arduino-cli/latest/
  - name: Arduino Zero pin mapping for PA14
    url: https://github.com/arduino/ArduinoCore-samd/blob/master/variants/arduino_zero/variant.cpp
difficulty: easy
features:
  - blinky
  - LED

images:
  prototype: hello-world-prototype.jpg
  console: hello-world-console.png

photos:
  - filename: hello-world-1.jpg
  - filename: hello-world-2.jpg
  - filename: hello-world-3.jpg

steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
  - step: Watch the Blinky LED the board is battery-powered or USB-powered.
---
