BOARD?=arduino:samd:arduino_zero_native
PORT := $(shell ls /dev/cu.usbmodem*)
BUILD=build

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length,-readability/casting,-readability/todo,-build/include_subdir,-runtime/printf *.ino

all:
	# This custom PCB does not have a crytal on pins PA00 and PA01
	# Hence, use -DCRYSTALLESS to replace the extra_flags in boards.txt
	arduino-cli compile --fqbn $(BOARD) --build-properties build.extra_flags="-DCRYSTALLESS -D__SAMD21G18A__ {build.usb_flags}"  --output-dir $(BUILD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) --input-dir $(BUILD) --verbose

clean:
	rm -r build
