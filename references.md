---
layout: default
title: References
permalink: /references
sequence: 10
similar:
  - name: a LoraWAN GPS tracker
    url: https://notes.iopush.net/how-to-make-a-lorawan-gps-tracker/
    type: developer
    year: 2016
    components:
      - type: LoRa
        name: RFM95
        url: https://cdn.sparkfun.com/assets/learn_tutorials/8/0/4/RFM95_96_97_98W.pdf
      - type: battery
        name: 18650
        url: https://datasheetspdf.com/pdf-file/1408721/TENERGY/18650/1
      - type: software
        name: node red
        url: https://nodered.org/
  - name: LoRaSensorTile
    url: https://hackaday.io/project/35169-hackable-cmwx1zzabz-lora-devices
    type: developer
    year: 2018
    components:
      - type: LoRa (with MCU STM32L082)
        name: CMWX1ZZABZ-078
        url: https://wireless.murata.com/pub/RFM/data/type_abz.pdf
      - type: mcu
        name: STM32L082
        url: https://www.st.com/resource/en/datasheet/dm00141132.pdf
      - type: accelerometer
        name: BMA280
        url: https://www.bosch-sensortec.com/products/motion-sensors/accelerometers/bma280.html#tab_module_16_1_2
      - type: pressure sensor
        name: BME280
        url: https://www.bosch-sensortec.com/products/environmental-sensors/humidity-sensors-bme280/
      - type: RGBW light sensor
        name: VEML6040
        url: https://www.vishay.com/ppg?84276
      - type: flash memory
        name: MX25L12835FZNI
        url: https://www.macronix.com/Lists/Datasheet/Attachments/7397/MX25L12835F,%203V,%20128Mb,%20v1.6.pdf
  - name: GPS Live Tracking
    type: developer
    url: https://kokonatt.com/embedded/gps-live-tracking
    components:
      - type: microcontroller
        name: ESP8266
      - type: GPS
        name: Neo-6M
      - type: visualization
        name: Grafana
      - type: database
        name: Influx DB
      - type: LoRa
        name: SX1278
        url: https://cdn-shop.adafruit.com/product-files/3179/sx1276_77_78_79.pdf
  - name: LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92- 868MHz
    type: developer
    url: https://www.seeedstudio.com/LoRaWAN-GPS-Tracker-with-9-axis-accelerometer-LGT92-p-2922.html
    cost: 39.50
    year: 2020
    components:
      - type: microcontroller
        name: STM32L072
      - type: LoRa
        name: SX1276 / 1278
      - type: battery
        name: 1000mA Li-on
      - type: accelerometer
        name:  MPU-9250
        url: https://invensense.tdk.com/wp-content/uploads/2015/02/PS-MPU-9250A-01-v1.1.pdf
  - name: SAMD21 LoRa Development Board with GPS
    url: https://hackaday.io/project/165646-samd21-lora-development-board-with-gps
    year: 2018
    type: developer
    components:
      - type: microcontroller
        name: ATSAMD21E18A-AU
      - type: GPS
        name: Quectel L80 GPS module
      - type: LoRa
        name: RFM95W
      - type: battery
        name: LiOn

references:
  - topic: LoRa
    list:
      - name: RFM95W LoRa Module
        url: https://www.hoperf.com/modules/lora/RFM95.html
      - name: Adafruit RFM9X schematic and layout
        url: https://learn.adafruit.com/adafruit-rfm69hcw-and-rfm96-rfm95-rfm98-lora-packet-padio-breakouts/downloads
      - name: RFM95 Ultra-long Range Transceiver Module/LoRa Module/support 868M frequency from Seeed
        url: https://www.seeedstudio.com/RFM95-Ultra-long-Range-Transceiver-Module-LoRa-Module-support-868M-frequency-p-2807.html
      - name: RN2483 Low-Power Long Range LoRa Technology Transceiver Module
        url: https://www.microchip.com/wwwproducts/en/RN2483
      - name: Murata's CMWX1ZZABZ-078 module
        url: https://wireless.murata.com/pub/RFM/data/type_abz.pdf
      - name: Semtech SX1276 ransceivers feature the LoRa® long range modem
        url: https://www.semtech.com/products/wireless-rf/lora-transceivers/sx1276
      - name: B-L072Z-LRWAN1 LoRa®/Sigfox™ Discovery kit
        url: https://www.st.com/en/evaluation-tools/b-l072z-lrwan1.html
      - name: (Project) Voodoo Sonic LoRaWAN-connected Doll
        url: https://www.instructables.com/id/Voodoo-Sonic-LoRaWAN-connected-Doll/

  - topic: LoRa Antenna
    list:
      - name: Testing LoRa Antennas at 915MHz
        url: https://medium.com/home-wireless/testing-lora-antennas-at-915mhz-6d6b41ac8f1d

  - topic: GPS
    list:
      - name: Calculate distance between two latitude-longitude points? (Haversine formula)
        url: https://stackoverflow.com/a/27943/496797
      - name: Haversine formula
        url: https://en.wikipedia.org/wiki/Haversine_formula
      - name: Testing out an upcoming STEMMA GPS board for STEMMA SUNDAY
        url: https://www.youtube.com/watch?v=JhquVC3RbZU
      - name: Adafruit Mini GPS PA1010D - UART and I2C - STEMMA QT
        url: https://www.adafruit.com/product/4415
      - name: Adafruit GPS Arduino firmware
        url: https://github.com/adafruit/Adafruit_GPS
      - name: CD-PA1010D GNSS patch antenna module Data Sheet V.02
        url: http://docs.mirifica.eu/CDtop-tech.com/CD-PA1010/CD-PA1010D-datasheet-v02.pdf
      - name: CDTop Technology PA1010Dv2 (CD-PA1010D2)
        url: https://www.mirifica.de/101067-1/cdtop-technology/pa1010daa19220027
      - name: NEO-6M GPS Module — An Introduction
        url: https://www.electroschematics.com/neo-6m-gps-module/
      - name: GPS Nixie Alarm Clock with Ublox NEO-6M GPS module
        url: https://hackaday.io/project/9417-gps-nixie-alarm-clock
      - name: Mini GSM/GPRS GPS Breakout SIM808
        url: http://wiki.seeedstudio.com/Mini_GSM_GPRS_GPS_Breakout_SIM808/
      - name: SIM808 GPS Application Note V1.00
        url: https://cdn-shop.adafruit.com/datasheets/SIM808_GPS_Application_Note_V1.00.pdf
      - name: 66-Channel LS20031 GPS Receiver Module (MT3329 Chipset)
        url: https://www.pololu.com/product/1249
      - name: Adafruit ultimate GPS with MTK3339 chipset
        url: https://www.adafruit.com/product/746
      - name: MEDIATEK - 3329 Datasheet
        url: https://www.puntoflotante.net/MEDIATEK-3329.pdf
      - name: GSM & GPS Car Diagnosis System with MEDIATEK MT3329
        url: https://hackaday.io/project/711-gsm-gps-car-diagnosis-system
      - name: Quectel L30 Compact GPS Module with Super Sensitivity
        url: https://www.quectel.com/UploadFile/Product/Quectel_L30_GPS_Specification_V2.0.pdf
      - name: NEO-7 series u-blox 7 GNSS modules
        url: https://www.u-blox.com/en/product/neo-7-series
      - name: NEO-6 series Versatile u-blox 6 GPS modules
        url: https://www.u-blox.com/en/product/neo-6-series
      - name: NEO-6 u-blox 6 GPS Modules Data Sheet
        url: https://www.u-blox.com/sites/default/files/products/documents/NEO-6_DataSheet_%28GPS.G6-HW-09005%29.pdf
      - name: SkyTraq Venus838LPx-T Timing GPS module breakout
        url: https://www.tindie.com/products/nsayer/skytraq-venus838lpx-t-timing-gps-module-breakout/
      - name: Venus838LPx-T 1cm2 Precision Timing GPS Receiver
        url: https://www.skytraq.com.tw/homesite/Venus838LPx-T_PB_v2.pdf
      - name: MAX-7 series u-blox 7 GNSS modules
        url: https://www.u-blox.com/en/product/max-7-series

  - topic: E-Ink
    list:
      - name: Waveshare 1.54inch e-Paper Module
        url: https://www.waveshare.com/wiki/1.54inch_e-Paper_Module
      - name: Waveshare 200x200, 1.54inch E-Ink raw display panel
        url: https://www.waveshare.com/product/modules/oleds-lcds/e-paper/1.54inch-e-paper.htm
      - name: Waveshare 200x200, 1.54inch E-Ink raw display panel schematic to module
        url: https://www.waveshare.com/w/upload/5/5b/1.54inch_e-Paper_Schematic.pdf
      - name: Waveshare 1.54inch e-Paper Module datasheet
        url: https://www.waveshare.com/w/upload/7/77/1.54inch_e-Paper_Datasheet.pdf

  - topic: Firmware
    list:
      - name: Arduino Core for STM32L0 with LoRaWAN connectivity
        url: https://github.com/GrumpyOldPizza/ArduinoCore-stm32l0

  - topic: SPI
    list:
      - name: How to access multiple SPI interfaces on Arduino
        url: https://arduino.stackexchange.com/questions/8425/how-to-access-multiple-spi-interfaces-on-arduino
      - name: Better SPI BUS design in 3 steps
        url: https://dorkbotpdx.org/blog/paul/better_spi_bus_design_in_3_steps/
      - name: Serial Peripheral Interface (SPI)
        url: https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi

  - topic: Manufacturing
    list:
      - name: How to Solder Castellated Mounting Holes
        url: https://learn.sparkfun.com/tutorials/how-to-solder-castellated-mounting-holes/all

---
