---
layout: default
title: Serial print
description: Create print statements with Oak.
references:
  - name: Arduino CLI
    url: https://arduino.github.io/arduino-cli/latest/
difficulty:
  - easy
features:
  - print
  - serial
steps:
  - step: Plug in the Oak PCB to the computer
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
---
