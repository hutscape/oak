---
layout: code
title: Receive LoRa packet
description: Receive LoRa with an increasing integer counter
references:
  - name: Arduino LoRa receiver example code
    url: https://github.com/sandeepmistry/arduino-LoRa/tree/master/code/LoRaReceiver
dependancies:
  - name: Arduino LoRa
    url: https://github.com/sandeepmistry/arduino-LoRa
prerequisites:
  - name: LoRa Tx
    url: ./lora-tx
difficulty: easy
features:
  - LoRa
  - receive
images:
  prototype: lora-prototype.jpg
  console: lora-rx-console.png
steps:
  - step: Ensure <a href="./lora-tx">LoRa Tx</a> is running
  - step: Plug in the Oak PCB to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
---
