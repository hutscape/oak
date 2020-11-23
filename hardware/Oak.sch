EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Oak"
Date "2020-11-23"
Rev "V1.0"
Comp "Hutscape"
Comment1 "Description: Measure outdoor distance between 2 keychain holders"
Comment2 "License: CC-BY-SA 4.0 or TAPR"
Comment3 "Project website: https://hutscape.com/oak"
Comment4 "Authored by: Sayanee Basu <sayanee@gmail.com>"
$EndDescr
$Comp
L E-Ink:Waveshare_1in54_epaper U6
U 1 1 5F8663D1
P 7700 5200
F 0 "U6" H 7300 5600 50  0000 C CNN
F 1 "Waveshare_1in54_epaper" H 7700 4350 50  0000 C CNN
F 2 "" H 7750 5200 50  0001 C CNN
F 3 "https://www.waveshare.com/1.54inch-e-Paper-Module.htm" H 7750 5200 50  0001 C CNN
F 4 "1.54inch e-Paper Module, SKU 12955" H 7700 5200 50  0001 C CNN "MPN"
	1    7700 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR017
U 1 1 5F867B15
P 8100 4600
F 0 "#PWR017" H 8100 4450 50  0001 C CNN
F 1 "+3V3" H 8115 4773 50  0000 C CNN
F 2 "" H 8100 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
Text Label 7000 5000 2    50   ~ 0
EINK_RST
Wire Wire Line
	7000 5000 7150 5000
Text Label 7000 5200 2    50   ~ 0
EINK_CS
Wire Wire Line
	7000 5200 7150 5200
Text Label 6500 5300 2    50   ~ 0
CLK
Text Label 7000 5400 2    50   ~ 0
COPI
Wire Wire Line
	7000 5400 7150 5400
Text Label 8350 5000 0    50   ~ 0
EINK_BUSY
Text Label 8350 5100 0    50   ~ 0
EINK_DC
Wire Wire Line
	8200 5000 8350 5000
Wire Wire Line
	8200 5100 8350 5100
$Comp
L power:GND #PWR023
U 1 1 5F87DA37
P 8000 5700
F 0 "#PWR023" H 8000 5450 50  0001 C CNN
F 1 "GND" H 8005 5527 50  0000 C CNN
F 2 "" H 8000 5700 50  0001 C CNN
F 3 "" H 8000 5700 50  0001 C CNN
	1    8000 5700
	1    0    0    -1  
$EndComp
$Comp
L CDTop_PA1010D_GPS:PA1010D U4
U 1 1 5F88EAFC
P 1450 5250
F 0 "U4" H 1150 5750 50  0000 C CNN
F 1 "PA1010D" H 1650 4700 50  0000 C CNN
F 2 "" H 1500 5150 50  0001 C CNN
F 3 "https://drive.google.com/file/d/1O-9RGAwgs2fgtnzJRBa9eB1fAqJt7n_k/view" H 1500 5150 50  0001 C CNN
F 4 "PA1010D" H 1450 5250 50  0001 C CNN "MPN"
	1    1450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F890E07
P 2000 4950
F 0 "R4" H 2059 4996 50  0000 L CNN
F 1 "10k" H 2059 4905 50  0000 L CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "~" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5200 2000 5050
Text Label 2000 5300 0    50   ~ 0
GPS_DATA
NoConn ~ 1000 5050
NoConn ~ 1000 5150
NoConn ~ 1000 5500
$Comp
L power:GND #PWR024
U 1 1 5F895834
P 1450 5950
F 0 "#PWR024" H 1450 5700 50  0001 C CNN
F 1 "GND" H 1455 5777 50  0000 C CNN
F 2 "" H 1450 5950 50  0001 C CNN
F 3 "" H 1450 5950 50  0001 C CNN
	1    1450 5950
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5F8A6EB7
P 4950 4650
F 0 "#PWR016" H 4950 4500 50  0001 C CNN
F 1 "+3V3" H 5100 4700 50  0000 C CNN
F 2 "" H 4950 4650 50  0001 C CNN
F 3 "" H 4950 4650 50  0001 C CNN
	1    4950 4650
	1    0    0    -1  
$EndComp
Text Label 5200 5700 0    50   ~ 0
LORA_G0
Wire Wire Line
	5050 5700 5200 5700
Wire Wire Line
	5050 5000 5300 5000
NoConn ~ 5050 5200
NoConn ~ 5050 5300
NoConn ~ 5050 5400
NoConn ~ 5050 5500
NoConn ~ 5050 5600
Text Label 3900 5500 2    50   ~ 0
LORA_RST
Text Label 3900 5000 2    50   ~ 0
CLK
Text Label 3900 5100 2    50   ~ 0
COPI
Text Label 3900 5200 2    50   ~ 0
CIPO
Text Label 3900 5300 2    50   ~ 0
LORA_CS
Wire Wire Line
	3900 5500 4050 5500
Wire Wire Line
	3900 5000 4050 5000
Wire Wire Line
	3900 5100 4050 5100
Wire Wire Line
	3900 5200 4050 5200
Wire Wire Line
	3900 5300 4050 5300
$Comp
L power:GND #PWR025
U 1 1 5F8B7FD4
P 4550 6050
F 0 "#PWR025" H 4550 5800 50  0001 C CNN
F 1 "GND" H 4555 5877 50  0000 C CNN
F 2 "" H 4550 6050 50  0001 C CNN
F 3 "" H 4550 6050 50  0001 C CNN
	1    4550 6050
	-1   0    0    -1  
$EndComp
Text Notes 800  4450 0    79   ~ 0
GPS
Wire Notes Line
	700  4500 1150 4500
Wire Notes Line
	1150 4500 1150 4250
Text Notes 6350 4450 0    79   ~ 0
E-Ink
Text Notes 3550 4450 0    79   ~ 0
LoRa 915MHz
Wire Notes Line
	6800 4250 6800 4550
Wire Notes Line
	6800 4550 6250 4550
Wire Notes Line
	4450 4550 3450 4550
Wire Wire Line
	8000 5600 8000 5700
Wire Wire Line
	1450 5850 1450 5950
Wire Wire Line
	4550 4650 4550 4800
Wire Wire Line
	7700 4600 7700 4750
NoConn ~ 1550 4700
$Comp
L power:+3V3 #PWR018
U 1 1 5F922951
P 2600 4900
F 0 "#PWR018" H 2600 4750 50  0001 C CNN
F 1 "+3V3" H 2615 5073 50  0000 C CNN
F 2 "" H 2600 4900 50  0001 C CNN
F 3 "" H 2600 4900 50  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F922E43
P 2600 5150
F 0 "R5" H 2659 5196 50  0000 L CNN
F 1 "1k" H 2659 5105 50  0000 L CNN
F 2 "" H 2600 5150 50  0001 C CNN
F 3 "~" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F923438
P 2600 5550
F 0 "D4" V 2650 5450 50  0000 R CNN
F 1 "YELLOW" V 2550 5450 50  0000 R CNN
F 2 "" H 2600 5550 50  0001 C CNN
F 3 "~" H 2600 5550 50  0001 C CNN
	1    2600 5550
	0    -1   -1   0   
$EndComp
Text Label 2650 5950 0    59   ~ 0
TX_LED
Wire Wire Line
	2600 4900 2600 5050
Wire Wire Line
	2600 5250 2600 5400
Wire Wire Line
	2600 5700 2600 5950
$Comp
L power:+3V3 #PWR019
U 1 1 5F92C409
P 3050 4900
F 0 "#PWR019" H 3050 4750 50  0001 C CNN
F 1 "+3V3" H 3065 5073 50  0000 C CNN
F 2 "" H 3050 4900 50  0001 C CNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F92C40F
P 3050 5150
F 0 "R6" H 3109 5196 50  0000 L CNN
F 1 "1k" H 3109 5105 50  0000 L CNN
F 2 "" H 3050 5150 50  0001 C CNN
F 3 "~" H 3050 5150 50  0001 C CNN
	1    3050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5F92C415
P 3050 5550
F 0 "D5" V 3100 5450 50  0000 R CNN
F 1 "YELLOW" V 3000 5450 50  0000 R CNN
F 2 "" H 3050 5550 50  0001 C CNN
F 3 "~" H 3050 5550 50  0001 C CNN
	1    3050 5550
	0    -1   -1   0   
$EndComp
Text Label 3100 5950 0    59   ~ 0
RX_LED
Wire Wire Line
	3050 4900 3050 5050
Wire Wire Line
	3050 5250 3050 5400
Wire Wire Line
	3050 5700 3050 5950
Text Notes 2550 4450 0    79   ~ 0
LEDs
Wire Notes Line
	2450 4550 2900 4550
Wire Notes Line
	2900 4550 2900 4250
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J4
U 1 1 5F902879
P 3200 6750
F 0 "J4" V 3650 6300 50  0000 C CNN
F 1 "Conn_ARM_JTAG_SWD_10" V 3350 8050 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 3200 6750 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 2850 5500 50  0001 C CNN
	1    3200 6750
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 5F92B935
P 2450 6650
F 0 "#PWR026" H 2450 6500 50  0001 C CNN
F 1 "+3V3" H 2465 6823 50  0000 C CNN
F 2 "" H 2450 6650 50  0001 C CNN
F 3 "" H 2450 6650 50  0001 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6750 2600 6750
$Comp
L power:GND #PWR027
U 1 1 5F92E5FC
P 3950 6900
F 0 "#PWR027" H 3950 6650 50  0001 C CNN
F 1 "GND" H 3955 6727 50  0000 C CNN
F 2 "" H 3950 6900 50  0001 C CNN
F 3 "" H 3950 6900 50  0001 C CNN
	1    3950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6650 3950 6650
Wire Wire Line
	3950 6650 3950 6750
Wire Wire Line
	3800 6750 3950 6750
Connection ~ 3950 6750
Wire Wire Line
	3950 6750 3950 6900
NoConn ~ 3400 7250
NoConn ~ 3300 7250
Text Label 3300 7400 0    50   ~ 0
SWDIO
Text Label 3300 7500 0    50   ~ 0
SWCLK
Text Label 2750 7400 2    50   ~ 0
RST
Wire Wire Line
	3200 7250 3200 7400
Wire Wire Line
	3200 7400 3300 7400
Wire Wire Line
	3100 7250 3100 7500
Wire Wire Line
	3100 7500 3300 7500
Text Notes 750  6450 0    79   ~ 0
SWD Program connector
Wire Notes Line
	700  6500 2250 6500
Wire Notes Line
	2250 6500 2250 6300
$Comp
L Device:R_Small R8
U 1 1 5F971654
P 6650 5550
F 0 "R8" H 6709 5596 50  0000 L CNN
F 1 "1k" H 6709 5505 50  0000 L CNN
F 2 "" H 6650 5550 50  0001 C CNN
F 3 "~" H 6650 5550 50  0001 C CNN
	1    6650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5300 6650 5300
$Comp
L power:GND #PWR022
U 1 1 5F975782
P 6650 5700
F 0 "#PWR022" H 6650 5450 50  0001 C CNN
F 1 "GND" H 6655 5527 50  0000 C CNN
F 2 "" H 6650 5700 50  0001 C CNN
F 3 "" H 6650 5700 50  0001 C CNN
	1    6650 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5300 6650 5450
Wire Wire Line
	6650 5650 6650 5700
Wire Wire Line
	6650 5300 7150 5300
Text Notes 6800 5950 0    47   ~ 0
A pull-down resistor\nto force the E-Ink\nCLK to be LOW\nin its idle state
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5FB25581
P 5500 5000
F 0 "J3" H 5600 4975 50  0000 L CNN
F 1 "Conn_Coaxial" H 5300 5150 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 5500 5000 50  0001 C CNN
F 3 " ~" H 5500 5000 50  0001 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5FB29970
P 5500 5250
F 0 "#PWR020" H 5500 5000 50  0001 C CNN
F 1 "GND" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5200 5500 5250
$Comp
L Device:LED D3
U 1 1 5FB3824C
P 2050 5550
F 0 "D3" H 2200 5600 50  0000 C CNN
F 1 "RED" H 2050 5650 50  0000 C CNN
F 2 "" H 2050 5550 50  0001 C CNN
F 3 "~" H 2050 5550 50  0001 C CNN
	1    2050 5550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FB392A2
P 2250 5750
F 0 "#PWR021" H 2250 5500 50  0001 C CNN
F 1 "GND" H 2255 5577 50  0000 C CNN
F 2 "" H 2250 5750 50  0001 C CNN
F 3 "" H 2250 5750 50  0001 C CNN
	1    2250 5750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5FB3DD25
P 2250 5650
F 0 "R7" H 2309 5696 50  0000 L CNN
F 1 "1k" H 2309 5605 50  0000 L CNN
F 2 "" H 2250 5650 50  0001 C CNN
F 3 "~" H 2250 5650 50  0001 C CNN
	1    2250 5650
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:RFM95W-915S2 U5
U 1 1 5FBDEF19
P 4550 5300
F 0 "U5" H 4200 5750 50  0000 C CNN
F 1 "RFM95" H 4850 5750 50  0000 C CNN
F 2 "" H 1250 6950 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 1250 6950 50  0001 C CNN
F 4 "RFM95W-915S2" H 4550 5300 50  0001 C CNN "MPN"
	1    4550 5300
	1    0    0    -1  
$EndComp
Text Notes 4800 6150 0    59   ~ 0
Dev board pins - RFM95 pins\nG0 - DIO0\nRST - NSS
Wire Wire Line
	4450 5900 4450 6050
Wire Wire Line
	4450 6050 4550 6050
Wire Wire Line
	4550 5900 4550 6050
Connection ~ 4550 6050
Wire Wire Line
	4650 5900 4650 6050
Wire Wire Line
	4650 6050 4550 6050
Wire Notes Line style solid
	6200 5850 6200 6200
Wire Notes Line style solid
	6200 6200 4750 6200
Wire Notes Line style solid
	4750 6200 4750 5850
Wire Notes Line style solid
	4750 5850 6200 5850
Wire Wire Line
	2750 7400 2900 7400
Wire Wire Line
	2900 7400 2900 7250
Wire Wire Line
	2450 6750 2450 6650
Wire Wire Line
	2200 5550 2250 5550
Wire Notes Line
	2450 4250 2450 6300
Wire Notes Line
	700  7550 4050 7550
Wire Notes Line
	4050 7550 4050 6300
$Comp
L Connector:USB_B_Micro J2
U 1 1 5FD89E81
P 2050 2150
F 0 "J2" H 1900 2500 50  0000 C CNN
F 1 "USB_B_Micro" H 1550 2150 50  0000 C CNN
F 2 "" H 2200 2100 50  0001 C CNN
F 3 "~" H 2200 2100 50  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP2112K-3.3 U1
U 1 1 5FD8C190
P 3100 1400
F 0 "U1" H 3100 1742 50  0000 C CNN
F 1 "AP2112" H 3100 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3100 1725 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 3100 1500 50  0001 C CNN
F 4 "AP2112K-3.3TRG1" H 3100 1400 50  0001 C CNN "MPN"
	1    3100 1400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5FD8DACF
P 3100 3600
F 0 "U3" H 3350 3850 50  0000 C CNN
F 1 "MCP7383" H 3300 3350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3150 3350 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 2950 3550 50  0001 C CNN
F 4 "MCP73831T-2ACI/OT" H 3100 3600 50  0001 C CNN "MPN"
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FD8FE49
P 900 1200
F 0 "J1" H 850 1350 50  0000 C CNN
F 1 "JST-PH2 for LiPo" H 600 1000 50  0000 C CNN
F 2 "" H 900 1200 50  0001 C CNN
F 3 "~" H 900 1200 50  0001 C CNN
	1    900  1200
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5FD9BB1A
P 1850 1300
F 0 "SW1" H 1850 1585 50  0000 C CNN
F 1 "SW_SPDT" H 1850 1494 50  0000 C CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "~" H 1850 1300 50  0001 C CNN
	1    1850 1300
	-1   0    0    -1  
$EndComp
Text Notes 750  900  0    79   ~ 0
Power
Wire Notes Line
	700  700  700  7550
Wire Notes Line
	700  950  1150 950 
Wire Notes Line
	1150 950  1150 700 
Wire Wire Line
	1100 1200 1650 1200
Wire Wire Line
	1550 1300 1550 1550
$Comp
L power:GND #PWR02
U 1 1 5FDB4422
P 1550 1550
F 0 "#PWR02" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1650 1400
$Comp
L Device:D_Schottky D1
U 1 1 5FDB8E09
P 2250 1300
F 0 "D1" H 2250 1150 50  0000 C CNN
F 1 "D_Schottky" H 2250 1450 50  0000 C CNN
F 2 "" H 2250 1300 50  0001 C CNN
F 3 "~" H 2250 1300 50  0001 C CNN
	1    2250 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1950 2500 1300
NoConn ~ 1950 2550
NoConn ~ 2350 2350
Text Label 2450 2150 0    47   ~ 0
USB_D+
Text Label 2450 2250 0    47   ~ 0
USB_D-
Wire Wire Line
	2350 2150 2450 2150
Wire Wire Line
	2350 2250 2450 2250
$Comp
L power:GND #PWR010
U 1 1 5FDDF220
P 2050 2600
F 0 "#PWR010" H 2050 2350 50  0001 C CNN
F 1 "GND" H 2055 2427 50  0000 C CNN
F 2 "" H 2050 2600 50  0001 C CNN
F 3 "" H 2050 2600 50  0001 C CNN
	1    2050 2600
	1    0    0    -1  
$EndComp
Text Label 2150 950  0    47   ~ 0
VBAT
Wire Wire Line
	2050 950  2050 1300
Text Label 2600 1950 0    47   ~ 0
VBUS
$Comp
L Device:LED D2
U 1 1 5FE4F6E4
P 2900 3150
F 0 "D2" H 2900 3050 50  0000 C CNN
F 1 "ORANGE" H 2900 3250 50  0000 C CNN
F 2 "" H 2900 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FE5027C
P 2550 3150
F 0 "R1" V 2450 3150 50  0000 C CNN
F 1 "1k" V 2650 3150 50  0000 C CNN
F 2 "" H 2550 3150 50  0001 C CNN
F 3 "~" H 2550 3150 50  0001 C CNN
	1    2550 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 3150 3100 3150
$Comp
L Device:C_Small C5
U 1 1 5FE8438C
P 3850 3650
F 0 "C5" H 3950 3550 50  0000 C CNN
F 1 "10uF" H 3950 3750 50  0000 C CNN
F 2 "" H 3850 3650 50  0001 C CNN
F 3 "~" H 3850 3650 50  0001 C CNN
	1    3850 3650
	-1   0    0    1   
$EndComp
Text Label 4000 3050 2    47   ~ 0
VBAT
$Comp
L power:GND #PWR012
U 1 1 5FE986CD
P 3850 3850
F 0 "#PWR012" H 3850 3600 50  0001 C CNN
F 1 "GND" H 3855 3677 50  0000 C CNN
F 2 "" H 3850 3850 50  0001 C CNN
F 3 "" H 3850 3850 50  0001 C CNN
	1    3850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FE98B13
P 2500 3700
F 0 "R3" V 2400 3700 50  0000 C CNN
F 1 "10k" V 2600 3700 50  0000 C CNN
F 2 "" H 2500 3700 50  0001 C CNN
F 3 "~" H 2500 3700 50  0001 C CNN
	1    2500 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3150 3100 3300
Wire Wire Line
	2700 3700 2600 3700
Wire Wire Line
	2350 3700 2350 3900
Wire Wire Line
	2350 3900 2750 3900
Wire Wire Line
	2400 3700 2350 3700
Wire Wire Line
	2750 3900 2750 3950
Connection ~ 2750 3900
Wire Wire Line
	2750 3900 3100 3900
$Comp
L power:GND #PWR013
U 1 1 5FEC1C39
P 2750 3950
F 0 "#PWR013" H 2750 3700 50  0001 C CNN
F 1 "GND" H 2755 3777 50  0000 C CNN
F 2 "" H 2750 3950 50  0001 C CNN
F 3 "" H 2750 3950 50  0001 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
Text Notes 750  3200 0    79   ~ 0
LiPo Charge\nManagement
Wire Notes Line
	1550 2900 1550 3300
Wire Notes Line
	1550 3300 700  3300
Wire Wire Line
	4250 1300 4250 1150
$Comp
L power:GND #PWR04
U 1 1 5FF1B049
P 3100 1800
F 0 "#PWR04" H 3100 1550 50  0001 C CNN
F 1 "GND" H 3105 1627 50  0000 C CNN
F 2 "" H 3100 1800 50  0001 C CNN
F 3 "" H 3100 1800 50  0001 C CNN
	1    3100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1700 3100 1800
$Comp
L power:+3V3 #PWR01
U 1 1 5FF12C00
P 4250 1150
F 0 "#PWR01" H 4250 1000 50  0001 C CNN
F 1 "+3V3" H 4200 1350 50  0000 C CNN
F 2 "" H 4250 1150 50  0001 C CNN
F 3 "" H 4250 1150 50  0001 C CNN
	1    4250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FF598DE
P 3100 3150
F 0 "#FLG01" H 3100 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 3150 3150 50  0000 L CNN
F 2 "" H 3100 3150 50  0001 C CNN
F 3 "~" H 3100 3150 50  0001 C CNN
	1    3100 3150
	1    0    0    -1  
$EndComp
Connection ~ 3100 3150
Wire Wire Line
	2400 1300 2500 1300
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FF6C5BA
P 4050 1300
F 0 "JP1" H 4050 1400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4100 1150 50  0001 C CNN
F 2 "" H 4050 1300 50  0001 C CNN
F 3 "~" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1300 4250 1300
$Comp
L Device:C_Small C6
U 1 1 5FBB9D79
P 3500 1550
F 0 "C6" H 3350 1650 50  0000 L CNN
F 1 "10uF" H 3300 1450 50  0000 L CNN
F 2 "" H 3500 1550 50  0001 C CNN
F 3 "~" H 3500 1550 50  0001 C CNN
	1    3500 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FBBA4D7
P 3700 1550
F 0 "C7" H 3750 1650 50  0000 L CNN
F 1 "1uF" H 3800 1450 50  0000 L CNN
F 2 "" H 3700 1550 50  0001 C CNN
F 3 "~" H 3700 1550 50  0001 C CNN
	1    3700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1300 1550 1300
Wire Wire Line
	3400 1300 3500 1300
Wire Wire Line
	3500 1300 3500 1450
Connection ~ 3500 1300
Wire Wire Line
	3500 1300 3700 1300
Wire Wire Line
	3700 1300 3700 1450
Connection ~ 3700 1300
Wire Wire Line
	3700 1300 3900 1300
Wire Wire Line
	2600 1950 2500 1950
Connection ~ 2500 1950
Wire Wire Line
	2050 950  2150 950 
$Comp
L power:GND #PWR028
U 1 1 5FC26BF0
P 3500 1800
F 0 "#PWR028" H 3500 1550 50  0001 C CNN
F 1 "GND" H 3505 1627 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5FC271F0
P 3700 1800
F 0 "#PWR029" H 3700 1550 50  0001 C CNN
F 1 "GND" H 3705 1627 50  0000 C CNN
F 2 "" H 3700 1800 50  0001 C CNN
F 3 "" H 3700 1800 50  0001 C CNN
	1    3700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1650 3500 1800
Wire Wire Line
	3700 1650 3700 1800
Wire Wire Line
	2100 1300 2050 1300
Connection ~ 2050 1300
Wire Wire Line
	2350 1950 2500 1950
$Comp
L Device:R_Small R9
U 1 1 5FC6C617
P 2700 1400
F 0 "R9" V 2800 1400 50  0000 C CNN
F 1 "100k" V 2900 1400 50  0000 C CNN
F 2 "" H 2700 1400 50  0001 C CNN
F 3 "~" H 2700 1400 50  0001 C CNN
	1    2700 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1400 2600 1300
Wire Wire Line
	2600 1300 2500 1300
Connection ~ 2500 1300
Wire Wire Line
	2600 1300 2800 1300
Connection ~ 2600 1300
Wire Wire Line
	2050 2600 2050 2550
$Comp
L Device:R_Small R10
U 1 1 5FCEA54D
P 1700 3400
F 0 "R10" H 1759 3446 50  0000 L CNN
F 1 "100k" H 1759 3355 50  0000 L CNN
F 2 "" H 1700 3400 50  0001 C CNN
F 3 "~" H 1700 3400 50  0001 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5FCEB0CB
P 1700 3750
F 0 "R11" H 1759 3796 50  0000 L CNN
F 1 "100k" H 1759 3705 50  0000 L CNN
F 2 "" H 1700 3750 50  0001 C CNN
F 3 "~" H 1700 3750 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5FCEB91A
P 1700 3950
F 0 "#PWR031" H 1700 3700 50  0001 C CNN
F 1 "GND" H 1705 3777 50  0000 C CNN
F 2 "" H 1700 3950 50  0001 C CNN
F 3 "" H 1700 3950 50  0001 C CNN
	1    1700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3500 1700 3600
Wire Wire Line
	1700 3850 1700 3950
$Comp
L power:+3V3 #PWR030
U 1 1 5FCF47FF
P 1700 3250
F 0 "#PWR030" H 1700 3100 50  0001 C CNN
F 1 "+3V3" H 1700 3450 50  0000 C CNN
F 2 "" H 1700 3250 50  0001 C CNN
F 3 "" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3250 1700 3300
Wire Wire Line
	1700 3600 1500 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3600 1700 3650
Text Label 1500 3600 2    47   ~ 0
BATT
Wire Wire Line
	2750 3150 2650 3150
Wire Wire Line
	2450 3150 2300 3150
$Comp
L Device:C_Small C8
U 1 1 5FD7B5C0
P 2300 3250
F 0 "C8" H 2100 3250 50  0000 L CNN
F 1 "10uF" H 2100 3150 50  0000 L CNN
F 2 "" H 2300 3250 50  0001 C CNN
F 3 "~" H 2300 3250 50  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5FD7C39E
P 2300 3400
F 0 "#PWR032" H 2300 3150 50  0001 C CNN
F 1 "GND" H 2305 3227 50  0000 C CNN
F 2 "" H 2300 3400 50  0001 C CNN
F 3 "" H 2300 3400 50  0001 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2300 3350
Connection ~ 2300 3150
Wire Wire Line
	2150 3150 2300 3150
$Comp
L Device:C_Small C9
U 1 1 5FDC6A31
P 4100 3650
F 0 "C9" H 4200 3550 50  0000 C CNN
F 1 "1uF" H 4200 3750 50  0000 C CNN
F 2 "" H 4100 3650 50  0001 C CNN
F 3 "~" H 4100 3650 50  0001 C CNN
	1    4100 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5FDC7150
P 4100 3850
F 0 "#PWR033" H 4100 3600 50  0001 C CNN
F 1 "GND" H 4105 3677 50  0000 C CNN
F 2 "" H 4100 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	1    4100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3500 4100 3550
Wire Wire Line
	3500 3500 3850 3500
Wire Wire Line
	3850 3550 3850 3500
Connection ~ 3850 3500
Wire Wire Line
	3850 3500 4100 3500
Wire Wire Line
	4000 3050 4100 3050
Wire Wire Line
	3850 3850 3850 3750
Wire Wire Line
	4100 3850 4100 3750
Wire Wire Line
	2150 3150 2150 2950
Wire Wire Line
	2150 2950 3650 2950
Wire Wire Line
	3650 2950 3650 3700
Wire Wire Line
	3500 3700 3650 3700
Connection ~ 6650 5300
$Comp
L Device:R_Small R12
U 1 1 5FF019EC
P 900 5100
F 0 "R12" H 700 5150 50  0000 L CNN
F 1 "10k" H 700 5050 50  0000 L CNN
F 2 "" H 900 5100 50  0001 C CNN
F 3 "~" H 900 5100 50  0001 C CNN
	1    900  5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR035
U 1 1 5FF0380D
P 900 5000
F 0 "#PWR035" H 900 4850 50  0001 C CNN
F 1 "+3V3" H 915 5173 50  0000 C CNN
F 2 "" H 900 5000 50  0001 C CNN
F 3 "" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5200 900  5350
Wire Wire Line
	900  5350 1000 5350
Wire Wire Line
	1900 5300 2000 5300
Wire Wire Line
	1900 5200 2000 5200
$Comp
L power:+3V3 #PWR034
U 1 1 5FF68447
P 2000 4850
F 0 "#PWR034" H 2000 4700 50  0001 C CNN
F 1 "+3V3" H 2015 5023 50  0000 C CNN
F 2 "" H 2000 4850 50  0001 C CNN
F 3 "" H 2000 4850 50  0001 C CNN
	1    2000 4850
	1    0    0    -1  
$EndComp
Text Label 850  5900 0    50   ~ 0
GPS_RST
Wire Wire Line
	900  5350 750  5350
Connection ~ 900  5350
Wire Wire Line
	750  5900 850  5900
Wire Wire Line
	750  5350 750  5900
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5FF94058
P 4100 3250
F 0 "JP2" V 4100 3100 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4150 3100 50  0001 C CNN
F 2 "" H 4100 3250 50  0001 C CNN
F 3 "~" H 4100 3250 50  0001 C CNN
	1    4100 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3050 4100 3100
Wire Wire Line
	4100 3400 4100 3500
Connection ~ 4100 3500
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5FFBE9A4
P 1650 4500
F 0 "JP3" H 1650 4400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 1700 4350 50  0001 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "~" H 1650 4500 50  0001 C CNN
	1    1650 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 5F88F291
P 1900 4500
F 0 "#PWR015" H 1900 4350 50  0001 C CNN
F 1 "+3V3" H 1915 4673 50  0000 C CNN
F 2 "" H 1900 4500 50  0001 C CNN
F 3 "" H 1900 4500 50  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4500 1800 4500
Wire Wire Line
	1400 4500 1400 4700
Wire Wire Line
	1500 4500 1400 4500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5FFF79CB
P 1400 4500
F 0 "#FLG02" H 1400 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 4673 50  0000 C CNN
F 2 "" H 1400 4500 50  0001 C CNN
F 3 "~" H 1400 4500 50  0001 C CNN
	1    1400 4500
	1    0    0    -1  
$EndComp
Connection ~ 1400 4500
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5FFF894B
P 4750 4650
F 0 "JP4" H 4750 4550 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4800 4500 50  0001 C CNN
F 2 "" H 4750 4650 50  0001 C CNN
F 3 "~" H 4750 4650 50  0001 C CNN
	1    4750 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 4650 4900 4650
Wire Wire Line
	4600 4650 4550 4650
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60004149
P 4550 4650
F 0 "#FLG03" H 4550 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 4650 50  0000 C CNN
F 2 "" H 4550 4650 50  0001 C CNN
F 3 "~" H 4550 4650 50  0001 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
Connection ~ 4550 4650
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 600051A0
P 7900 4600
F 0 "JP5" H 7900 4500 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 7950 4450 50  0001 C CNN
F 2 "" H 7900 4600 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 4600 7750 4600
Wire Wire Line
	8050 4600 8100 4600
$Comp
L power:PWR_FLAG #FLG04
U 1 1 6001133C
P 7700 4600
F 0 "#FLG04" H 7700 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 7600 4800 50  0000 C CNN
F 2 "" H 7700 4600 50  0001 C CNN
F 3 "~" H 7700 4600 50  0001 C CNN
	1    7700 4600
	1    0    0    -1  
$EndComp
Connection ~ 7700 4600
Wire Wire Line
	2650 5950 2600 5950
Wire Wire Line
	3050 5950 3100 5950
Wire Notes Line
	3450 6300 3450 4250
Wire Notes Line
	6250 6300 6250 4250
Wire Notes Line
	8800 4250 8800 6300
Text Label 9300 4800 0    47   ~ 0
D0
Text Label 9300 4900 0    47   ~ 0
D1
Text Label 9300 5000 0    47   ~ 0
D2
Text Label 9300 5100 0    47   ~ 0
D3
Text Label 9300 5200 0    47   ~ 0
D4
Text Label 9300 5300 0    47   ~ 0
D5
Text Label 9300 5400 0    47   ~ 0
D6
Text Label 9300 5500 0    47   ~ 0
D7
Wire Wire Line
	9250 5200 9300 5200
Text Label 9300 5600 0    47   ~ 0
D8
Text Label 9300 5700 0    47   ~ 0
D9
Text Label 9300 5800 0    47   ~ 0
D10
Text Label 10400 4800 0    50   ~ 0
COPI
Text Label 10400 4900 0    50   ~ 0
CIPO
Text Label 10400 5000 0    50   ~ 0
CLK
Text Label 10400 5100 0    50   ~ 0
SDA
Text Label 10400 5200 0    50   ~ 0
SCL
$Comp
L Connector:Conn_01x12_Male J5
U 1 1 603075BB
P 9050 5300
F 0 "J5" H 9150 5950 50  0000 C CNN
F 1 "Conn_01x12_Male" H 9158 5890 50  0001 C CNN
F 2 "" H 9050 5300 50  0001 C CNN
F 3 "~" H 9050 5300 50  0001 C CNN
	1    9050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5900 9250 5900
$Comp
L Connector:Conn_01x12_Male J6
U 1 1 60322821
P 10150 5300
F 0 "J6" H 10250 5950 50  0000 C CNN
F 1 "Conn_01x12_Male" H 10258 5890 50  0001 C CNN
F 2 "" H 10150 5300 50  0001 C CNN
F 3 "~" H 10150 5300 50  0001 C CNN
	1    10150 5300
	1    0    0    -1  
$EndComp
Text Label 9300 5900 0    50   ~ 0
RST
Text Label 10400 5600 0    50   ~ 0
VBAT
Text Label 10400 5700 0    50   ~ 0
VBUS
Wire Wire Line
	10350 5600 10400 5600
Wire Wire Line
	10350 5700 10400 5700
$Comp
L power:GND #PWR0101
U 1 1 603BCDC3
P 10400 5900
F 0 "#PWR0101" H 10400 5650 50  0001 C CNN
F 1 "GND" H 10405 5727 50  0000 C CNN
F 2 "" H 10400 5900 50  0001 C CNN
F 3 "" H 10400 5900 50  0001 C CNN
	1    10400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5900 10400 5900
$Comp
L power:+3V3 #PWR0102
U 1 1 603CAA10
P 10700 5700
F 0 "#PWR0102" H 10700 5550 50  0001 C CNN
F 1 "+3V3" H 10715 5873 50  0000 C CNN
F 2 "" H 10700 5700 50  0001 C CNN
F 3 "" H 10700 5700 50  0001 C CNN
	1    10700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 5800 10700 5700
Wire Wire Line
	10350 5800 10700 5800
Text Notes 8850 4400 0    79   ~ 0
Extension headers
Wire Notes Line
	8800 4500 10000 4500
Wire Notes Line
	10000 4500 10000 4250
Wire Notes Line
	700  700  10550 700 
Wire Wire Line
	8500 4150 8850 4150
Wire Wire Line
	8900 3250 8900 3150
Wire Wire Line
	9000 3250 9000 3150
Text Label 9000 3250 3    47   ~ 0
SCL
Text Label 8900 3250 3    47   ~ 0
SDA
Text Label 7200 1150 1    47   ~ 0
D13
Text Label 7100 1150 1    47   ~ 0
D11
NoConn ~ 7000 3150
NoConn ~ 7100 3150
NoConn ~ 7200 3150
NoConn ~ 6700 1150
Wire Wire Line
	7200 1000 7450 1000
Wire Wire Line
	7200 1000 7200 1150
Wire Wire Line
	7100 900  7450 900 
Wire Wire Line
	7100 900  7100 1150
Wire Wire Line
	6800 800  7450 800 
Wire Wire Line
	6800 800  6800 1150
Text Label 8600 3400 1    47   ~ 0
D12
Text Label 8500 3250 3    47   ~ 0
D10
Text Label 7400 3250 3    47   ~ 0
D9
Wire Wire Line
	8200 3150 8200 4100
Wire Wire Line
	8100 3150 8100 4000
Wire Wire Line
	7800 3150 7800 3900
Wire Wire Line
	7700 3150 7700 3800
Wire Wire Line
	7600 3150 7600 3700
Wire Wire Line
	7400 3150 7400 3600
Wire Wire Line
	7300 3150 7300 3500
Text Label 7300 3250 3    47   ~ 0
D8
Text Label 8800 3250 3    47   ~ 0
D7
Text Label 8700 3250 3    47   ~ 0
D6
Text Label 8200 3250 3    47   ~ 0
D5
Text Label 7500 3250 3    47   ~ 0
D4
Wire Wire Line
	7500 3150 7500 3250
Text Label 7600 3250 3    47   ~ 0
D3
Text Label 8100 3250 3    47   ~ 0
D2
Text Label 7700 3250 3    47   ~ 0
D1
Text Label 7800 3250 3    47   ~ 0
D0
Wire Wire Line
	7200 3700 7600 3700
Text Label 7200 3700 2    50   ~ 0
GPS_RST
Wire Notes Line style solid
	6200 4150 6200 2650
Wire Notes Line style solid
	4550 4150 6200 4150
Wire Notes Line style solid
	4550 2650 4550 4150
Wire Wire Line
	8100 4000 7200 4000
Text Label 7200 4000 2    50   ~ 0
BATT
Wire Wire Line
	5750 2250 6300 2250
Wire Wire Line
	6300 2250 6400 2250
Connection ~ 6300 2250
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FB51B7B
P 6300 2250
F 0 "#FLG0101" H 6300 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 2350 50  0000 C CNN
F 2 "" H 6300 2250 50  0001 C CNN
F 3 "~" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
Text Label 8850 4050 0    50   ~ 0
CIPO
Text Label 7450 900  0    50   ~ 0
COPI
Wire Wire Line
	10200 2250 10450 2250
Wire Wire Line
	5750 1550 5750 2050
Wire Wire Line
	8500 3150 8500 4150
Wire Wire Line
	8600 3150 8600 4050
Wire Wire Line
	8700 3150 8700 3950
Wire Wire Line
	8800 3150 8800 3850
Wire Wire Line
	9100 3700 9750 3700
Wire Wire Line
	9100 3150 9100 3700
Wire Wire Line
	9200 3600 9750 3600
Wire Wire Line
	9200 3150 9200 3600
Text Label 9750 3700 0    47   ~ 0
USB_D-
Text Label 9750 3600 0    47   ~ 0
USB_D+
Wire Wire Line
	9300 3150 9300 3500
Wire Wire Line
	9500 3150 9500 3400
Wire Wire Line
	9600 3150 9600 3300
Wire Wire Line
	9300 3500 9750 3500
Wire Wire Line
	9500 3400 9750 3400
Wire Wire Line
	9600 3300 9750 3300
Text Label 9750 3300 0    50   ~ 0
SWDIO
Text Label 9750 3400 0    50   ~ 0
SWCLK
Connection ~ 10250 3150
Wire Wire Line
	10350 3150 10250 3150
Text Label 10350 3150 0    50   ~ 0
RST
Wire Wire Line
	10250 3150 10250 3400
Wire Wire Line
	9800 3150 10250 3150
Wire Wire Line
	8600 4050 8850 4050
Wire Wire Line
	8700 3950 8850 3950
Wire Wire Line
	8850 3850 8800 3850
Text Label 9750 3500 0    50   ~ 0
TX_LED
Text Label 7450 800  0    50   ~ 0
RX_LED
$Comp
L power:+3V3 #PWR011
U 1 1 5F907590
P 10700 3100
F 0 "#PWR011" H 10700 2950 50  0001 C CNN
F 1 "+3V3" H 10715 3273 50  0000 C CNN
F 2 "" H 10700 3100 50  0001 C CNN
F 3 "" H 10700 3100 50  0001 C CNN
	1    10700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3400 10250 3500
Connection ~ 10250 3400
Wire Wire Line
	10550 3400 10700 3400
Wire Wire Line
	10700 3400 10700 3100
Wire Wire Line
	10250 3400 10350 3400
Wire Wire Line
	10250 3900 10250 4000
$Comp
L power:GND #PWR014
U 1 1 5F9033C5
P 10250 4000
F 0 "#PWR014" H 10250 3750 50  0001 C CNN
F 1 "GND" H 10400 3900 50  0000 C CNN
F 2 "" H 10250 4000 50  0001 C CNN
F 3 "" H 10250 4000 50  0001 C CNN
	1    10250 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F902DEE
P 10250 3700
F 0 "SW2" V 10204 3848 50  0000 L CNN
F 1 "SW_Push" V 10295 3848 50  0000 L CNN
F 2 "" H 10250 3900 50  0001 C CNN
F 3 "~" H 10250 3900 50  0001 C CNN
	1    10250 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F902508
P 10450 3400
F 0 "R2" V 10350 3400 50  0000 C CNN
F 1 "10k" V 10550 3400 50  0000 C CNN
F 2 "" H 10450 3400 50  0001 C CNN
F 3 "~" H 10450 3400 50  0001 C CNN
	1    10450 3400
	0    1    1    0   
$EndComp
NoConn ~ 9400 3150
NoConn ~ 8400 3150
NoConn ~ 8300 3150
NoConn ~ 8000 3150
NoConn ~ 7900 3150
NoConn ~ 6800 3150
NoConn ~ 6700 3150
NoConn ~ 7300 1150
NoConn ~ 7400 1150
Wire Wire Line
	8200 4100 7200 4100
Wire Wire Line
	7800 3900 7200 3900
Wire Wire Line
	7700 3800 7200 3800
Wire Wire Line
	7400 3600 7200 3600
Wire Wire Line
	7300 3500 7200 3500
Text Label 7200 3500 2    50   ~ 0
EINK_RST
Text Label 7450 1000 0    50   ~ 0
CLK
Text Label 8850 4150 0    50   ~ 0
EINK_CS
Text Label 7200 3600 2    50   ~ 0
EINK_DC
Text Label 8850 3850 0    50   ~ 0
EINK_BUSY
Text Label 8850 3950 0    50   ~ 0
LORA_RST
Text Label 7200 4100 2    50   ~ 0
LORA_CS
Text Label 7200 3800 2    50   ~ 0
LORA_G0
Text Label 7200 3900 2    50   ~ 0
GPS_DATA
Wire Wire Line
	5750 2050 5750 2250
Wire Wire Line
	5750 2050 5700 2050
Connection ~ 5750 2050
Wire Wire Line
	5750 2250 5750 2350
Connection ~ 5750 2250
Wire Wire Line
	5750 2350 6400 2350
Connection ~ 5750 2350
$Comp
L power:+3V3 #PWR03
U 1 1 5F90DB5A
P 5750 1550
F 0 "#PWR03" H 5750 1400 50  0001 C CNN
F 1 "+3V3" H 5765 1723 50  0000 C CNN
F 2 "" H 5750 1550 50  0001 C CNN
F 3 "" H 5750 1550 50  0001 C CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2350 5150 2400
Wire Wire Line
	5250 2350 5150 2350
Wire Wire Line
	5450 2350 5750 2350
$Comp
L power:GND #PWR08
U 1 1 5F90B9F5
P 5150 2400
F 0 "#PWR08" H 5150 2150 50  0001 C CNN
F 1 "GND" H 5050 2400 50  0000 C CNN
F 2 "" H 5150 2400 50  0001 C CNN
F 3 "" H 5150 2400 50  0001 C CNN
	1    5150 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F90AAC0
P 5350 2350
F 0 "C4" V 5400 2250 50  0000 C CNN
F 1 "100nF" V 5400 2500 50  0000 C CNN
F 2 "" H 5350 2350 50  0001 C CNN
F 3 "~" H 5350 2350 50  0001 C CNN
	1    5350 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2250 4900 2250
$Comp
L power:GND #PWR07
U 1 1 5F9094B2
P 4800 2250
F 0 "#PWR07" H 4800 2000 50  0001 C CNN
F 1 "GND" H 4700 2250 50  0000 C CNN
F 2 "" H 4800 2250 50  0001 C CNN
F 3 "" H 4800 2250 50  0001 C CNN
	1    4800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2250 5750 2250
$Comp
L Device:C_Small C3
U 1 1 5F90756C
P 5000 2250
F 0 "C3" V 4950 2150 50  0000 C CNN
F 1 "100nF" V 4850 2150 50  0000 C CNN
F 2 "" H 5000 2250 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    5000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 2050 5500 2050
$Comp
L power:GND #PWR06
U 1 1 5F8FB454
P 5400 2050
F 0 "#PWR06" H 5400 1800 50  0001 C CNN
F 1 "GND" H 5300 2050 50  0000 C CNN
F 2 "" H 5400 2050 50  0001 C CNN
F 3 "" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2050 5750 2050
$Comp
L Device:C_Small C2
U 1 1 5F8FA657
P 5600 2050
F 0 "C2" V 5550 1950 50  0000 C CNN
F 1 "100nF" V 5450 1950 50  0000 C CNN
F 2 "" H 5600 2050 50  0001 C CNN
F 3 "~" H 5600 2050 50  0001 C CNN
	1    5600 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1850 5950 1900
Wire Wire Line
	6100 1850 5950 1850
$Comp
L power:GND #PWR05
U 1 1 5F8F97E2
P 5950 1900
F 0 "#PWR05" H 5950 1650 50  0001 C CNN
F 1 "GND" H 5850 1950 50  0000 C CNN
F 2 "" H 5950 1900 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1850 6300 1850
Wire Wire Line
	6400 1950 6400 1850
$Comp
L Device:C_Small C1
U 1 1 5F8F7DE6
P 6200 1850
F 0 "C1" V 6250 1950 50  0000 C CNN
F 1 "1uF" V 6350 1950 50  0000 C CNN
F 2 "" H 6200 1850 50  0001 C CNN
F 3 "~" H 6200 1850 50  0001 C CNN
	1    6200 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10450 2250 10450 2050
Connection ~ 10450 2250
Wire Wire Line
	10200 2050 10450 2050
Wire Wire Line
	10450 2500 10450 2250
$Comp
L power:GND #PWR09
U 1 1 5F8F39F1
P 10450 2500
F 0 "#PWR09" H 10450 2250 50  0001 C CNN
F 1 "GND" H 10455 2327 50  0000 C CNN
F 2 "" H 10450 2500 50  0001 C CNN
F 3 "" H 10450 2500 50  0001 C CNN
	1    10450 2500
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-AUT U2
U 1 1 5F8E7FD8
P 8300 2150
F 0 "U2" V 9150 600 50  0000 R CNN
F 1 "ATSAMD21" V 9150 1050 50  0000 R CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 7350 400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 8300 3150 50  0001 C CNN
F 4 "ATSAMD21G18A-AUT" H 8300 2150 50  0001 C CNN "MPN"
	1    8300 2150
	0    -1   -1   0   
$EndComp
Wire Notes Line style solid
	4550 2650 6200 2650
Text Notes 4600 4100 0    59   ~ 0
Arduino Zero pins | SAMD21G pins\n\n1. GPS_DATA - D0/RX - PA11\n2. LORA_G0 - D1/TX - PA10\n3. LORA_CS - D5 - PA15\n4. LORA_RST - D6 - PA20\n5. EINK_BUSY - D7 - PA21\n6. EINK_RST - D8 - PA06\n7. EINK_DC - D9 - PA07\n8. EINK_CS - D10 - PA18\n9. COPI - ICSP_COPI - PB10\n10. CLK - ICSP_SCK - PB11\n11. CIPO - ICSP_CIPO - PA19\n12. BATT - D2 - PA14\n13. GPS_RST - D3 - PA09
Wire Notes Line
	5550 950  5550 700 
Wire Notes Line
	4450 950  5550 950 
Text Notes 4550 900  0    79   ~ 0
Microcontroller
Wire Notes Line
	10600 700  11000 700 
Wire Notes Line
	11000 700  11000 6300
Wire Notes Line
	700  4250 11000 4250
Wire Notes Line
	700  6300 11000 6300
Wire Notes Line
	4450 700  4450 4550
Wire Notes Line
	700  2900 4450 2900
Wire Notes Line style solid
	800  2800 800  2500
Wire Notes Line style solid
	1600 2800 800  2800
Wire Notes Line style solid
	1600 2500 1600 2800
Wire Notes Line style solid
	800  2500 1600 2500
Text Notes 850  2750 0    47   ~ 0
Power source \nis either the USB or\nLiPo battery
Text Label 9500 4800 0    47   ~ 0
GPS_DATA
Wire Wire Line
	9250 4800 9500 4800
Text Label 9500 4900 0    47   ~ 0
LORA_G0
Text Label 9500 5000 0    47   ~ 0
BATT
Text Label 9500 5100 0    47   ~ 0
GPS_RST
Text Label 9500 5300 0    47   ~ 0
LORA_CS
Wire Wire Line
	9250 4900 9500 4900
Wire Wire Line
	9250 5000 9500 5000
Wire Wire Line
	9250 5100 9500 5100
Wire Wire Line
	9250 5300 9500 5300
Text Label 9500 5400 0    47   ~ 0
LORA_RST
Wire Wire Line
	9250 5400 9500 5400
Text Label 9500 5500 0    47   ~ 0
EINK_BUSY
Wire Wire Line
	9250 5500 9500 5500
Text Label 9500 5600 0    47   ~ 0
EINK_RST
Wire Wire Line
	9250 5600 9500 5600
Text Label 9500 5700 0    47   ~ 0
EINK_DC
Wire Wire Line
	9250 5700 9500 5700
Text Label 9500 5800 0    47   ~ 0
EINK_CS
Wire Wire Line
	9250 5800 9500 5800
Text Label 10650 4900 0    47   ~ 0
D11
Wire Wire Line
	10350 4900 10650 4900
Text Label 10650 4800 0    47   ~ 0
D12
Wire Wire Line
	10350 4800 10650 4800
Text Label 10650 5000 0    47   ~ 0
D13
Wire Wire Line
	10350 5000 10650 5000
Wire Wire Line
	10400 5100 10350 5100
Wire Wire Line
	10400 5200 10350 5200
Text Label 6900 3250 3    47   ~ 0
A0
Wire Wire Line
	6900 3150 6900 3250
Text Label 10400 5300 0    47   ~ 0
A0
Wire Wire Line
	10400 5300 10350 5300
Text Label 10400 5400 0    47   ~ 0
A1
Wire Wire Line
	10400 5400 10350 5400
Text Label 10400 5500 0    47   ~ 0
A2
Wire Wire Line
	10400 5500 10350 5500
Text Label 6900 1150 1    47   ~ 0
A1
Text Label 7000 1150 1    47   ~ 0
A2
$EndSCHEMATC
