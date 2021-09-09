---
layout: example
title: Measure battery voltage
description: Measure LiPo battery voltage
references:
  - name: Arduino Zero pin mappings
    url: https://github.com/arduino/ArduinoCore-samd/blob/master/variants/arduino_zero/variant.cpp
  - name: Arduino CLI
    url: https://arduino.github.io/arduino-cli/latest/
  - name: Measuring battery of Adafruit Adalogger
    url: https://learn.adafruit.com/adafruit-feather-m0-adalogger/power-management#measuring-battery-2060084-9
difficulty: medium
features:
  - measure
  - battery
images:
  prototype: measure-batt-prototype.jpg
  console: measure-batt-console.png
steps:
  - step: Plug in the Oak PCB to the computer
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
---
