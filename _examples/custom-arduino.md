---
layout: example
title: Create a custom Arduino Board
description: Create a local and downloadable custom Arduino board
references:
  - name: Arduino Platform specifications
    url: https://arduino.github.io/arduino-cli/0.19/platform-specification/
  - name: Where are the Arduino installed cores located?
    url: https://support.arduino.cc/hc/en-us/articles/360012076960-Where-are-the-installed-cores-located-
  - name: Arduino IDE - Creating Custom Boards
    url: https://www.instructables.com/Arduino-IDE-Creating-Custom-Boards/
  - name: Arduino Core SAMD
    url: https://github.com/arduino/ArduinoCore-samd
  - name: Adafruit nRF52 Arduino
    url: https://github.com/adafruit/Adafruit_nRF52_Arduino
  - name: Arduino ESP32
    url: https://github.com/espressif/arduino-esp32
difficulty: difficult
features:
  - custom
  - arduino
prerequisites:
  - name: Upload Arduino Zero bootloader
    url: ./bootloader
has_code: false
---

There are 2 ways of creating a custom Arduino Board. [Create a local custom board](#create-local-custom-board) for testing or [create a downloadable custom board](#create-downloadable-custom-board)

Refer to the 2 repositories created:

1. [hutscape-arduino-boards](https://github.com/hutscape/hutscape-arduino-boards)
2. [arduino-board-index](https://github.com/hutscape/arduino-board-index)

## Create local custom board

1. Identify the architecture that is closest to the microcontroller you are using E.g. SAMD21G
1. Identify the corresponding similar repository of the custom board E.g. [Arduino Zero](https://github.com/arduino/ArduinoCore-samd/tree/master/variants/arduino_zero)
1. Find the closest board variant location [on your computer based on the operating system](https://support.arduino.cc/hc/en-us/articles/360012076960-Where-are-the-installed-cores-located-)

    ```sh
    ~/Library/Arduino15/packages/arduino/hardware/samd/1.8.11/variants/arduino_zero
    ```
1. If required, change `variants.h` and `variant.cpp`
1. Copy the most similar board and amend the namespace in `boards.txt` in locally in the path `~/Library/Arduino15/packages/arduino/hardware/samd/1.8.11/`

    ```sh
    # Oak (Native USB Port)
    # --------------------------------------
    oak.name=Oak
    ...
    ```
1. Amend other properties accordingly E.g. add the `-DCRYSTALLESS`

    ```sh
    oak.build.extra_flags=-DCRYSTALLESS -D__SAMD21G18A__ {build.usb_flags}
    ```
1. Change `platform.txt` version

    ```sh
    name=Arduino SAMD (32-bits ARM Cortex-M0+) Boards
    version=1.8.11
    ```
1. View the newely added board locally in Arduino IDE

<img src="{{ site.url }}/images/examples/custom-arduino-board-local.png" alt="Custom Arduino board locally">

## Create downloadable custom board

1. Identify the architecture that is closest to the microcontroller you are using E.g. SAMD21G
1. Identify the corresponding similar repository of the custom board E.g. [Arduino Zero in ArduinoCore-samd](https://github.com/arduino/ArduinoCore-samd)
1. Remove all other bootloaders in the `bootloaders` folder and keep only the ones required E.g. `zero`

    ```sh
    ├── bootloaders
    │   └── zero
    ```

1. Remove all other variants in the `variants` folder and keep only the ones required E.g. folder `arduino_zero` renamed to `oak`

    ```sh
    └── variants
      └── oak
    ```
1. Copy [`api` folder](https://github.com/arduino/ArduinoCore-API/tree/master/api) into `cores/arduino` folder
1. Simplify the file `boards.txt` and keep only the board required
    - change the namespace E.g. `arduino_zero_native` to `oak`
    - change `*.name`, `*.build.usb_product`, `*.build.usb_manufacturer` accordingly
    - change `*.build.variant` accordingly

    ```sh
    # Oak (Native USB Port)
    # --------------------------------------
    oak.name=Oak (Native USB Port)
    ...
    oak.build.usb_product="Hutscape Oak"
    oak.build.usb_manufacturer="Hutscape"
    ...
    oak.build.extra_flags=-DCRYSTALLESS -D__SAMD21G18A__ {build.usb_flags}
    ...
    oak.build.variant=oak
    ...
    ```
1. Ensure the folder names under `variants` are the same as in the file `boards.txt` properties `*.build.variant`
    ```
    $ ls variants
    oak

    $ cat boards.txt| grep "variant="
    oak.build.variant=oak
    ```
1. Change the file `platform.txt` properties `name=` and `version=`

    ```sh
    name=Hutscape Boards
    version=1.0.0
    ```
1. Git commit the entire board
1. Git tag it with the same version written in `platform.txt`
1. Download [a zip file of the entire repository](https://github.com/hutscape/hutscape-arduino-boards)
1. Add the new version of the board in [`package_hutscape_index.json`](https://github.com/hutscape/arduino-board-index/blob/main/package_hutscape_index.json)
    -  Add SHASUM
      ```sh
      shasum -a 256 hutscape-oak-arduino-boards-x.y.z.tar.gz
      ```
    - Add size in bytes
1. Copy and paste the `package_hutscape_index.json` URL into the File > Preferences > "Additional Boards Manager" textbox in Arduino IDE
    ```
    https://raw.githubusercontent.com/hutscape/arduino-board-index/main/package_hutscape_index.json
    ```

    <img src="{{ site.url }}/images/examples/paste-board-url.png" alt="Copy and paste the custom board URL into Board Manager in Arduino IDE">
1. Restart Arduino IDE
1. Go to Tools > Boards Manager > Search for Hutscape or Oak
    <img src="{{ site.url }}/images/examples/install-custom-board.png" alt="Install custom Arduino board">
