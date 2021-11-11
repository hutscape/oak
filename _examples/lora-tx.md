---
layout: example
title: Transmit LoRa packet
description: Transmit LoRa with an increasing integer counter to no destination address
references:
  - name: Arduino LoRa sender example code
    url: https://github.com/sandeepmistry/arduino-LoRa/tree/master/examples/LoRaSender
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
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
---
