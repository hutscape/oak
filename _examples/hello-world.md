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

Start with this sketch that will blink the on-board LED.

### Alternate Makefile

```c
BOARD?=arduino:samd:arduino_zero_native
PORT := $(shell ls /dev/cu.usbmodem*)
BUILD=build

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length,-readability/casting,-readability/todo,-runtime/int *.ino

all:
	# This custom PCB does not have a crytal on pins PA00 and PA01
	# Hence, use -DCRYSTALLESS to replace the extra_flags in boards.txt
	arduino-cli compile --fqbn $(BOARD) --build-properties build.extra_flags="-DCRYSTALLESS -D__SAMD21G18A__ {build.usb_flags}"  --output-dir $(BUILD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) --input-dir $(BUILD) --verbose

clean:
	rm -r build
```
