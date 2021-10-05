---
layout: example
title: Receive LoRa packet
description: Receive LoRa with an increasing integer counter
references:
  - name: Arduino LoRa receiver example code
    url: https://github.com/sandeepmistry/arduino-LoRa/tree/master/examples/LoRaReceiver
prerequisites:
  - name: LoRa Tx
    url: ./lora-tx
difficulty: easy
features:
  - LoRa
  - receive
images:
  prototype: lora-tx-prototype.jpg
  console: lora-rx-console.png
steps:
  - step: Ensure <a href="./lora-tx">LoRa Tx</a> is running
  - step: Plug in the Oak PCB to the computer
  - step: Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>
    image: print-hello-check.png
  - step: Run <code>make</code> to upload the code
---
