BOARD?=hutscape:samd:oak
PORT := $(shell ls /dev/cu.usbmodem*)
BUILD=build

.PHONY: default lint all flash clean

default: all flash clean

all:
	arduino-cli compile --fqbn $(BOARD) --output-dir $(BUILD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) --input-dir $(BUILD) --verbose

clean:
	rm -r build
