BOARD?=hutscape:samd:oak
PORT := $(shell ls /dev/cu.usbmodem*)
BUILD=build

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length,-readability/casting,-readability/todo *.ino

all:
	arduino-cli compile --fqbn $(BOARD) --output-dir $(BUILD) ./

flash:
	arduino-cli upload -p /dev/cu.usbmodem14101 --fqbn $(BOARD) --input-dir $(BUILD) --verbose

clean:
	rm -r build
