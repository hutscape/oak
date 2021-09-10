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
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
  - step: (Option A) Watch the Blinky LED while the USB cable is plugged into the laptop
  - step: (Option B) Plug out the USB and put in the 18650 battery to watch the blinky LED
---
