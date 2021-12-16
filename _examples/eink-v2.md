---
layout: example
title: E-Ink hello world with V2.1
description: Display demo sample code with V2.1 E-Ink hardware version
references:
  - name: Arduino Waveshare E-paper 1in54 version 2
    url: https://github.com/waveshare/e-Paper/tree/master/Arduino/epd1in54_V2
difficulty: medium
features:
  - e-ink
  - e-paper
  - waveshare
  - display
versions:
  - name: e-paper
    version: 2.1
images:
  prototype: eink-v2-prototype.jpg
  console: eink-v2-console.png
steps:
  - step: Plug in the Oak PCB with the E-Ink to the computer
  - step: (Option A) Ensure the PCB can be detected with <code>ls -al /dev/cu.usbmodem</code> and <code>arduino-cli board list</code>. Run <code>make</code> to compile and upload the code to the board.
    image: print-hello-check.png
  - step: (Option B) Ensure the board can be detected with Arduino IDE. Compile and upload the code to the board.
    image: arduino-ide-board.png
  - step: Start the serial monitor to view the console logs
---
### Waveshare E-Ink version

Check the E-Ink display module for the version number. Here, version 2.1 is used and the number is marked on the module.

<img src="{{site.url}}/images/examples/waveshare-1in54-v2-module.jpg" alt="WaveShare 1.54 inch module Version 2.1">

### SPI
The 4 non-SPI pins are defined in `epdif.h` file:

```
#define RST_PIN 8
#define DC_PIN 9
#define CS_PIN 10
#define BUSY_PIN 7
```

The SPI pins for Arduino Zero / SAMD21G are defined as following:

| SAMD21G Pin | I/O Pin | SERCOM-ALT | Name |
| ------ | ------ | ------ | ------ |
| `19` | `PB10` | `SERCOM4/PAD[2]` | COPI |
| `20` | `PB11` | `SERCOM4/PAD[3]` | SCK |

### Pins in schematic

| Schematic label | Arduino Zero pin name | SAMD21G pin name
| ----- | ------ | ------ |
| EINK_BUSY | D7 | PA21
| EINK_RST | D8 | PA06
| EINK_DC | D9 | PA07
| EINK_CS | D10 | PA18
| COPI | ICSP_COPI | PB10
| CLK | ICSP_SCK | PB11
| CIPO | ICSP_CIPO | PA12
