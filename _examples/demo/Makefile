BOARD?=hutscape:samd:oak
PORT := $(shell ls /dev/cu.usbmodem*)
BUILD=build

.PHONY: default lint all flash clean

default: lint all flash clean

a: lint pcb_a flash clean

b: lint pcb_b flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length,-readability/casting,-readability/todo,-runtime/int *.ino

pcb_a:
	arduino-cli compile --fqbn $(BOARD) --build-property compiler.cpp.extra_flags="-DLOCAL_ADDRESS=0xAA -DDESTINATION_ADDRESS=0xBB" --output-dir $(BUILD) ./

pcb_b:
	arduino-cli compile --fqbn $(BOARD) --build-property compiler.cpp.extra_flags="-DLOCAL_ADDRESS=0xBB -DDESTINATION_ADDRESS=0xAA -DEINK_V2" --output-dir $(BUILD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) --input-dir $(BUILD) --verbose

clean:
	rm -r build
