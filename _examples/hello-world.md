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

steps:
  - step: Plug in the Oak PCB to the computer
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
---
