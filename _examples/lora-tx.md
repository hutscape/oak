---
layout: example
title: Transmit LoRa packet
description: Transmit LoRa with an increasing integer counter to no destination address
references:
  - name: Arduino LoRa sender example code
    url: https://github.com/sandeepmistry/arduino-LoRa/tree/master/examples/LoRaSender
dependancies:
  - name: Arduino LoRa
    url: https://github.com/sandeepmistry/arduino-LoRa
prerequisites:
  - name: LoRa Rx
    url: ./lora-rx
difficulty: easy
features:
  - LoRa
  - transmission
images:
  prototype: lora-prototype.jpg
  console: lora-tx-console.png
steps:
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---
