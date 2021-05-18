EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Oak"
Date "2021-05-16"
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
F 1 "Waveshare_1in54_epaper" H 7000 4550 50  0000 C CNN
F 2 "Waveshare_1.54_E-ink:Waveshare_1.54_E-Ink" H 7750 5200 50  0001 C CNN
F 3 "https://www.waveshare.com/1.54inch-e-Paper-Module.htm" H 7750 5200 50  0001 C CNN
F 4 "614961950511" H 7700 5200 50  0001 C CNN "MPN"
F 5 "https://www.waveshare.com/1.54inch-e-Paper-Module.htm" H 7700 5200 50  0001 C CNN "Link"
F 6 "1" H 7700 5200 50  0001 C CNN "MOQ"
F 7 "Module" H 7700 5200 50  0001 C CNN "Package"
F 8 "21.21" H 7700 5200 50  0001 C CNN "Unit"
F 9 "Waveshare" H 7700 5200 50  0001 C CNN "Vendor"
F 10 "Waveshare" H 7700 5200 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 7700 5200 50  0001 C CNN "Category"
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
F 2 "CDTop_PA1010D_GPS:CDTop_MT3333_PA1010D" H 1500 5150 50  0001 C CNN
F 3 "https://drive.google.com/file/d/1O-9RGAwgs2fgtnzJRBa9eB1fAqJt7n_k/view" H 1500 5150 50  0001 C CNN
F 4 "PA1010D" H 1450 5250 50  0001 C CNN "MPN"
F 5 "https://www.cdtop-tech.com/products/pa1010d" H 1450 5250 50  0001 C CNN "Link"
F 6 "SMD" H 1450 5250 50  0001 C CNN "Package"
F 7 "boxA-51" H 1450 5250 50  0001 C CNN "Stock"
F 8 "12.00" H 1450 5250 50  0001 C CNN "Unit"
F 9 "CDTop" H 1450 5250 50  0001 C CNN "Vendor"
F 10 "1" H 1450 5250 50  0001 C CNN "MOQ"
F 11 "CDTop" H 1450 5250 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 1450 5250 50  0001 C CNN "Category"
	1    1450 5250
	1    0    0    -1  
$EndComp
Text Label 2000 5300 0    50   ~ 0
GPS_TX
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
LORA_DATA
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
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 2600 5150 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcwr08x1001ftl/res-1k-1-0-125w-0805-thick-film/dp/2447587" H 2600 5150 50  0001 C CNN "Link"
F 5 "10" H 2600 5150 50  0001 C CNN "MOQ"
F 6 "MCWR08X1001FTL" H 2600 5150 50  0001 C CNN "MPN"
F 7 "0805" H 2600 5150 50  0001 C CNN "Package"
F 8 "boxA-18" H 2600 5150 50  0001 C CNN "Stock"
F 9 "0.012" H 2600 5150 50  0001 C CNN "Unit"
F 10 "Element14" H 2600 5150 50  0001 C CNN "Vendor"
F 11 "Multicomp" H 2600 5150 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2600 5150 50  0001 C CNN "Category"
	1    2600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F923438
P 2600 5550
F 0 "D4" V 2650 5450 50  0000 R CNN
F 1 "YELLOW" V 2550 5450 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 5550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810051702_Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 2600 5550 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 2600 5550 50  0001 C CNN "Link"
F 5 "10" H 2600 5550 50  0001 C CNN "MOQ"
F 6 "17-215UYC/S530-A3/TR8" H 2600 5550 50  0001 C CNN "MPN"
F 7 "0805" H 2600 5550 50  0001 C CNN "Package"
F 8 "boxA-54" H 2600 5550 50  0001 C CNN "Stock"
F 9 "0.0624" H 2600 5550 50  0001 C CNN "Unit"
F 10 "LCSC" H 2600 5550 50  0001 C CNN "Vendor"
F 11 "Everlight" H 2600 5550 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2600 5550 50  0001 C CNN "Category"
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
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3050 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 3050 5150 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcwr08x1001ftl/res-1k-1-0-125w-0805-thick-film/dp/2447587" H 3050 5150 50  0001 C CNN "Link"
F 5 "10" H 3050 5150 50  0001 C CNN "MOQ"
F 6 "MCWR08X1001FTL" H 3050 5150 50  0001 C CNN "MPN"
F 7 "0805" H 3050 5150 50  0001 C CNN "Package"
F 8 "boxA-18" H 3050 5150 50  0001 C CNN "Stock"
F 9 "0.012" H 3050 5150 50  0001 C CNN "Unit"
F 10 "Element14" H 3050 5150 50  0001 C CNN "Vendor"
F 11 "Multicomp" H 3050 5150 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3050 5150 50  0001 C CNN "Category"
	1    3050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5F92C415
P 3050 5550
F 0 "D5" V 3100 5450 50  0000 R CNN
F 1 "YELLOW" V 3000 5450 50  0000 R CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3050 5550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810051702_Everlight-Elec-17-215UYC-S530-A3-TR8_C72036.pdf" H 3050 5550 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0805-Yellow-light_C72036.html" H 3050 5550 50  0001 C CNN "Link"
F 5 "10" H 3050 5550 50  0001 C CNN "MOQ"
F 6 "17-215UYC/S530-A3/TR8" H 3050 5550 50  0001 C CNN "MPN"
F 7 "0805" H 3050 5550 50  0001 C CNN "Package"
F 8 "boxA-54" H 3050 5550 50  0001 C CNN "Stock"
F 9 "0.0624" H 3050 5550 50  0001 C CNN "Unit"
F 10 "LCSC" H 3050 5550 50  0001 C CNN "Vendor"
F 11 "Everlight" H 3050 5550 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3050 5550 50  0001 C CNN "Category"
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
P 9950 5150
F 0 "J4" V 10400 4700 50  0000 C CNN
F 1 "Conn_ARM_JTAG_SWD_10" V 10900 5150 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 9950 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1992056.pdf" V 9600 3900 50  0001 C CNN
F 4 "https://sg.element14.com/samtec/ftsh-105-01-l-dv/header-1-27mm-smd-10way/dp/1667759" H 9950 5150 50  0001 C CNN "Link"
F 5 "1" H 9950 5150 50  0001 C CNN "MOQ"
F 6 "FTSH-105-01-L-DV" H 9950 5150 50  0001 C CNN "MPN"
F 7 "SMD" H 9950 5150 50  0001 C CNN "Package"
F 8 "2.20" H 9950 5150 50  0001 C CNN "Unit"
F 9 "Element14" H 9950 5150 50  0001 C CNN "Vendor"
F 10 "Samtec" H 9950 5150 50  0001 C CNN "Manufacturer"
F 11 "Connector" H 9950 5150 50  0001 C CNN "Category"
	1    9950 5150
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 5F92B935
P 9200 5050
F 0 "#PWR026" H 9200 4900 50  0001 C CNN
F 1 "+3V3" H 9215 5223 50  0000 C CNN
F 2 "" H 9200 5050 50  0001 C CNN
F 3 "" H 9200 5050 50  0001 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5150 9350 5150
$Comp
L power:GND #PWR027
U 1 1 5F92E5FC
P 10700 5300
F 0 "#PWR027" H 10700 5050 50  0001 C CNN
F 1 "GND" H 10705 5127 50  0000 C CNN
F 2 "" H 10700 5300 50  0001 C CNN
F 3 "" H 10700 5300 50  0001 C CNN
	1    10700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 5050 10700 5050
Wire Wire Line
	10700 5050 10700 5150
Wire Wire Line
	10550 5150 10700 5150
Connection ~ 10700 5150
Wire Wire Line
	10700 5150 10700 5300
NoConn ~ 10150 5650
NoConn ~ 10050 5650
Text Label 10050 5800 0    50   ~ 0
SWDIO
Text Label 10050 5900 0    50   ~ 0
SWCLK
Text Label 9500 5800 2    50   ~ 0
RST
Wire Wire Line
	9950 5650 9950 5800
Wire Wire Line
	9950 5800 10050 5800
Wire Wire Line
	9850 5650 9850 5900
Wire Wire Line
	9850 5900 10050 5900
Text Notes 8850 4400 0    79   ~ 0
SWD Program connector
Wire Notes Line
	8800 4450 10350 4450
Wire Notes Line
	10350 4450 10350 4250
$Comp
L Device:R_Small R8
U 1 1 5F971654
P 7650 1000
F 0 "R8" H 7709 1046 50  0000 L CNN
F 1 "1k" H 7709 955 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7650 1000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 7650 1000 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcwr08x1001ftl/res-1k-1-0-125w-0805-thick-film/dp/2447587" H 7650 1000 50  0001 C CNN "Link"
F 5 "10" H 7650 1000 50  0001 C CNN "MOQ"
F 6 "MCWR08X1001FTL" H 7650 1000 50  0001 C CNN "MPN"
F 7 "0805" H 7650 1000 50  0001 C CNN "Package"
F 8 "boxA-18" H 7650 1000 50  0001 C CNN "Stock"
F 9 "0.012" H 7650 1000 50  0001 C CNN "Unit"
F 10 "Element14" H 7650 1000 50  0001 C CNN "Vendor"
F 11 "Multicomp" H 7650 1000 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 7650 1000 50  0001 C CNN "Category"
	1    7650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F975782
P 7650 1100
F 0 "#PWR022" H 7650 850 50  0001 C CNN
F 1 "GND" H 7655 927 50  0000 C CNN
F 2 "" H 7650 1100 50  0001 C CNN
F 3 "" H 7650 1100 50  0001 C CNN
	1    7650 1100
	1    0    0    -1  
$EndComp
Text Notes 8100 1250 0    47   ~ 0
A pull-down resistor\nto force the E-Ink\nCLK to be LOW\nin its idle state
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5FB25581
P 5500 5000
F 0 "J3" H 5600 4975 50  0000 L CNN
F 1 "Conn_Coaxial" H 5300 5150 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 5500 5000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1662283.pdf" H 5500 5000 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/19-70-4-tgg/rf-coaxial-sma-straight-jack-50ohm/dp/1342653" H 5500 5000 50  0001 C CNN "Link"
F 5 "1" H 5500 5000 50  0001 C CNN "MOQ"
F 6 "MP-19-70-4-TGG" H 5500 5000 50  0001 C CNN "MPN"
F 7 "PCB Mount" H 5500 5000 50  0001 C CNN "Package"
F 8 "5.16" H 5500 5000 50  0001 C CNN "Unit"
F 9 "Element14" H 5500 5000 50  0001 C CNN "Vendor"
F 10 "Multicomp" H 5500 5000 50  0001 C CNN "Manufacturer"
F 11 "Connector" H 5500 5000 50  0001 C CNN "Category"
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
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 5550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2861594.pdf" H 2050 5550 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcl-s270src/led-smd-0805-super-red/dp/1581239" H 2050 5550 50  0001 C CNN "Link"
F 5 "5" H 2050 5550 50  0001 C CNN "MOQ"
F 6 "MCL-S270SRC" H 2050 5550 50  0001 C CNN "MPN"
F 7 "0805" H 2050 5550 50  0001 C CNN "Package"
F 8 "0.134" H 2050 5550 50  0001 C CNN "Unit"
F 9 "Element14" H 2050 5550 50  0001 C CNN "Vendor"
F 10 "Multicomp" H 2050 5550 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 2050 5550 50  0001 C CNN "Category"
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
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 5650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 2250 5650 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcwr08x1001ftl/res-1k-1-0-125w-0805-thick-film/dp/2447587" H 2250 5650 50  0001 C CNN "Link"
F 5 "10" H 2250 5650 50  0001 C CNN "MOQ"
F 6 "MCWR08X1001FTL" H 2250 5650 50  0001 C CNN "MPN"
F 7 "0805" H 2250 5650 50  0001 C CNN "Package"
F 8 "boxA-18" H 2250 5650 50  0001 C CNN "Stock"
F 9 "0.012" H 2250 5650 50  0001 C CNN "Unit"
F 10 "Element14" H 2250 5650 50  0001 C CNN "Vendor"
F 11 "Multicomp" H 2250 5650 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2250 5650 50  0001 C CNN "Category"
	1    2250 5650
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:RFM95W-915S2 U5
U 1 1 5FBDEF19
P 4550 5300
F 0 "U5" H 4200 5750 50  0000 C CNN
F 1 "RFM95" H 4850 5750 50  0000 C CNN
F 2 "HopeRF_RFM95:HopeRF_RFM9X-SMD" H 1250 6950 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 1250 6950 50  0001 C CNN
F 4 "RFM95W-915S2" H 4550 5300 50  0001 C CNN "MPN"
F 5 "https://sg.element14.com/hoperf/rfm95w-915s2/rf-transceiver-module-915mhz-13dbm/dp/2759295" H 4550 5300 50  0001 C CNN "Link"
F 6 "1" H 4550 5300 50  0001 C CNN "MOQ"
F 7 "SMD" H 4550 5300 50  0001 C CNN "Package"
F 8 "24.55" H 4550 5300 50  0001 C CNN "Unit"
F 9 "Element14" H 4550 5300 50  0001 C CNN "Vendor"
F 10 "HopeRF" H 4550 5300 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 4550 5300 50  0001 C CNN "Category"
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
	9500 5800 9650 5800
Wire Wire Line
	9650 5800 9650 5650
Wire Wire Line
	9200 5150 9200 5050
Wire Wire Line
	2200 5550 2250 5550
Wire Notes Line
	2450 4250 2450 6300
$Comp
L Regulator_Linear:AP2112K-3.3 U1
U 1 1 5FD8C190
P 3250 1400
F 0 "U1" H 3250 1742 50  0000 C CNN
F 1 "AP2112" H 3250 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3250 1725 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 3250 1500 50  0001 C CNN
F 4 "AP2112K-3.3TRG1" H 3250 1400 50  0001 C CNN "MPN"
F 5 "https://sg.element14.com/diodes-inc/ap2112k-3-3trg1/ldo-fixed-3-3v-0-6a-40-to-85deg/dp/3257429" H 3250 1400 50  0001 C CNN "Link"
F 6 "5" H 3250 1400 50  0001 C CNN "MOQ"
F 7 "SOT23-5" H 3250 1400 50  0001 C CNN "Package"
F 8 "boxA-6" H 3250 1400 50  0001 C CNN "Stock"
F 9 "0.483" H 3250 1400 50  0001 C CNN "Unit"
F 10 "Element14" H 3250 1400 50  0001 C CNN "Vendor"
F 11 "Diodes" H 3250 1400 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3250 1400 50  0001 C CNN "Category"
	1    3250 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FD8FE49
P 900 1200
F 0 "J1" H 850 1350 50  0000 C CNN
F 1 "18650 Battery holder" V 1000 1000 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" H 900 1200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2067690.pdf" H 900 1200 50  0001 C CNN
F 4 "https://sg.element14.com/keystone/1042p/battery-holder-18650-smd/dp/2674338" H 900 1200 50  0001 C CNN "Link"
F 5 "1" H 900 1200 50  0001 C CNN "MOQ"
F 6 "1042P" H 900 1200 50  0001 C CNN "MPN"
F 7 "SMD" H 900 1200 50  0001 C CNN "Package"
F 8 "" H 900 1200 50  0001 C CNN "Stock"
F 9 "4.04" H 900 1200 50  0001 C CNN "Unit"
F 10 "Element14" H 900 1200 50  0001 C CNN "Vendor"
F 11 "Keystone" H 900 1200 50  0001 C CNN "Manufacturer"
F 12 "Connector" H 900 1200 50  0001 C CNN "Category"
	1    900  1200
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5FD9BB1A
P 1750 1300
F 0 "SW1" H 1750 1585 50  0000 C CNN
F 1 "SW_SPDT" H 1750 1494 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1750 1300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2604293.pdf" H 1750 1300 50  0001 C CNN
F 4 "https://sg.element14.com/nidec-copal/cus-12tb/slide-switch-spdt-0-3a-4vdc-smd/dp/2854773" H 1750 1300 50  0001 C CNN "Link"
F 5 "5" H 1750 1300 50  0001 C CNN "MOQ"
F 6 "CUS-12TB" H 1750 1300 50  0001 C CNN "MPN"
F 7 "SMD" H 1750 1300 50  0001 C CNN "Package"
F 8 "1.04 " H 1750 1300 50  0001 C CNN "Unit"
F 9 "Element14" H 1750 1300 50  0001 C CNN "Vendor"
F 10 "boxA-40" H 1750 1300 50  0001 C CNN "Stock"
F 11 "Nidec" H 1750 1300 50  0001 C CNN "Manufacturer"
F 12 "Switch" H 1750 1300 50  0001 C CNN "Category"
	1    1750 1300
	-1   0    0    -1  
$EndComp
Text Notes 750  900  0    79   ~ 0
Power
Wire Notes Line
	700  950  1150 950 
Wire Notes Line
	1150 950  1150 700 
Wire Wire Line
	1450 1300 1450 1550
$Comp
L power:GND #PWR02
U 1 1 5FDB4422
P 1450 1550
F 0 "#PWR02" H 1450 1300 50  0001 C CNN
F 1 "GND" H 1455 1377 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1550 1400
$Comp
L Device:C_Small C5
U 1 1 5FE8438C
P 3850 3700
F 0 "C5" H 3950 3600 50  0000 C CNN
F 1 "10uF" H 3950 3800 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 3700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2842314.pdf" H 3850 3700 50  0001 C CNN
F 4 "LMK212ABJ106KGHT" H 3850 3700 50  0001 C CNN "MPN"
F 5 "0805" H 3850 3700 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/taiyo-yuden/lmk212abj106kght/capacitor-mlcc-0805-10v-x5r-10uf/dp/3217584" H 3850 3700 50  0001 C CNN "Link"
F 7 "1" H 3850 3700 50  0001 C CNN "MOQ"
F 8 "boxA-30" H 3850 3700 50  0001 C CNN "Stock"
F 9 "0.252" H 3850 3700 50  0001 C CNN "Unit"
F 10 "Element14" H 3850 3700 50  0001 C CNN "Vendor"
F 11 "Taiyo Yuden" H 3850 3700 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3850 3700 50  0001 C CNN "Category"
	1    3850 3700
	-1   0    0    1   
$EndComp
Text Label 4000 3100 2    47   ~ 0
VBAT
$Comp
L power:GND #PWR012
U 1 1 5FE986CD
P 3850 3900
F 0 "#PWR012" H 3850 3650 50  0001 C CNN
F 1 "GND" H 3855 3727 50  0000 C CNN
F 2 "" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FE98B13
P 2500 3750
F 0 "R3" V 2400 3750 50  0000 C CNN
F 1 "10k" V 2600 3750 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 3750 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/427/crcwce3-1223726.pdf" H 2500 3750 50  0001 C CNN
F 4 "https://www.mouser.sg/ProductDetail/Vishay-Dale/CRCW080510K0FKEAC?qs=E3Y5ESvWgWORadmUijPtxQ==" H 2500 3750 50  0001 C CNN "Link"
F 5 "1" H 2500 3750 50  0001 C CNN "MOQ"
F 6 "CRCW080510K0FKEAC" H 2500 3750 50  0001 C CNN "MPN"
F 7 "0805" H 2500 3750 50  0001 C CNN "Package"
F 8 "boxA-31" H 2500 3750 50  0001 C CNN "Stock"
F 9 "0.148" H 2500 3750 50  0001 C CNN "Unit"
F 10 "Mouser" H 2500 3750 50  0001 C CNN "Vendor"
F 11 "Vishay" H 2500 3750 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2500 3750 50  0001 C CNN "Category"
	1    2500 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 3750 2600 3750
Wire Wire Line
	2350 3750 2350 3950
Wire Wire Line
	2350 3950 2750 3950
Wire Wire Line
	2400 3750 2350 3750
Wire Wire Line
	2750 3950 2750 4000
Connection ~ 2750 3950
Wire Wire Line
	2750 3950 3100 3950
$Comp
L power:GND #PWR013
U 1 1 5FEC1C39
P 2750 4000
F 0 "#PWR013" H 2750 3750 50  0001 C CNN
F 1 "GND" H 2755 3827 50  0000 C CNN
F 2 "" H 2750 4000 50  0001 C CNN
F 3 "" H 2750 4000 50  0001 C CNN
	1    2750 4000
	1    0    0    -1  
$EndComp
Text Notes 750  3200 0    79   ~ 0
LiPo Charge\nManagement
Wire Notes Line
	1550 2900 1550 3300
Wire Notes Line
	1550 3300 700  3300
Wire Wire Line
	4400 1300 4400 1250
$Comp
L power:GND #PWR04
U 1 1 5FF1B049
P 3250 1800
F 0 "#PWR04" H 3250 1550 50  0001 C CNN
F 1 "GND" H 3255 1627 50  0000 C CNN
F 2 "" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0001 C CNN
	1    3250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1700 3250 1800
$Comp
L power:+3V3 #PWR01
U 1 1 5FF12C00
P 4400 1150
F 0 "#PWR01" H 4400 1000 50  0001 C CNN
F 1 "+3V3" H 4350 1350 50  0000 C CNN
F 2 "" H 4400 1150 50  0001 C CNN
F 3 "" H 4400 1150 50  0001 C CNN
	1    4400 1150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FF6C5BA
P 4200 1300
F 0 "JP1" H 4200 1400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4250 1150 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4200 1300 50  0001 C CNN
F 3 "~" H 4200 1300 50  0001 C CNN
F 4 "Connector" H 4200 1300 50  0001 C CNN "Category"
F 5 "JP1, JP2, JP3, JP4, JP5" H 4200 1300 50  0001 C CNN "DNP"
	1    4200 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 1300 4400 1300
$Comp
L Device:C_Small C6
U 1 1 5FBB9D79
P 3650 1550
F 0 "C6" H 3500 1650 50  0000 L CNN
F 1 "10uF" H 3450 1450 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3650 1550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2842314.pdf" H 3650 1550 50  0001 C CNN
F 4 "LMK212ABJ106KGHT" H 3650 1550 50  0001 C CNN "MPN"
F 5 "0805" H 3650 1550 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/taiyo-yuden/lmk212abj106kght/capacitor-mlcc-0805-10v-x5r-10uf/dp/3217584" H 3650 1550 50  0001 C CNN "Link"
F 7 "1" H 3650 1550 50  0001 C CNN "MOQ"
F 8 "boxA-30" H 3650 1550 50  0001 C CNN "Stock"
F 9 "0.252" H 3650 1550 50  0001 C CNN "Unit"
F 10 "Element14" H 3650 1550 50  0001 C CNN "Vendor"
F 11 "Taiyo Yuden" H 3650 1550 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3650 1550 50  0001 C CNN "Category"
	1    3650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FBBA4D7
P 3850 1550
F 0 "C7" H 3900 1650 50  0000 L CNN
F 1 "1uF" H 3950 1450 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3850 1550 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/C0805C105K3RACTU.pdf" H 3850 1550 50  0001 C CNN
F 4 "C0805C105K3RACTU" H 3850 1550 50  0001 C CNN "MPN"
F 5 "0805" H 3850 1550 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/kemet/c0805c105k3ractu/cap-1-f-25v-10-x7r-0805/dp/1637035" H 3850 1550 50  0001 C CNN "Link"
F 7 "10" H 3850 1550 50  0001 C CNN "MOQ"
F 8 "0.156 " H 3850 1550 50  0001 C CNN "Unit"
F 9 "Element14" H 3850 1550 50  0001 C CNN "Vendor"
F 10 "Kemet" H 3850 1550 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 3850 1550 50  0001 C CNN "Category"
	1    3850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1300 1450 1300
Wire Wire Line
	3550 1300 3650 1300
Wire Wire Line
	3650 1300 3650 1450
Connection ~ 3650 1300
Wire Wire Line
	3650 1300 3850 1300
Wire Wire Line
	3850 1300 3850 1450
Connection ~ 3850 1300
Wire Wire Line
	3850 1300 4050 1300
$Comp
L power:GND #PWR028
U 1 1 5FC26BF0
P 3650 1800
F 0 "#PWR028" H 3650 1550 50  0001 C CNN
F 1 "GND" H 3655 1627 50  0000 C CNN
F 2 "" H 3650 1800 50  0001 C CNN
F 3 "" H 3650 1800 50  0001 C CNN
	1    3650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5FC271F0
P 3850 1800
F 0 "#PWR029" H 3850 1550 50  0001 C CNN
F 1 "GND" H 3855 1627 50  0000 C CNN
F 2 "" H 3850 1800 50  0001 C CNN
F 3 "" H 3850 1800 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1650 3650 1800
Wire Wire Line
	3850 1650 3850 1800
$Comp
L Device:R_Small R9
U 1 1 5FC6C617
P 2850 1400
F 0 "R9" V 2950 1400 50  0000 C CNN
F 1 "100k" V 3050 1400 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2850 1400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810301245_RALEC-RTT051003BTP_C312260.pdf" H 2850 1400 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_RALEC-RTT051003BTP_C312260.html" H 2850 1400 50  0001 C CNN "Link"
F 5 "20" H 2850 1400 50  0001 C CNN "MOQ"
F 6 "RTT051003BTP" H 2850 1400 50  0001 C CNN "MPN"
F 7 "0805" H 2850 1400 50  0001 C CNN "Package"
F 8 "boxA-56" H 2850 1400 50  0001 C CNN "Stock"
F 9 "0.0472" H 2850 1400 50  0001 C CNN "Unit"
F 10 "LCSC" H 2850 1400 50  0001 C CNN "Vendor"
F 11 "Ralec" H 2850 1400 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2850 1400 50  0001 C CNN "Category"
	1    2850 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1400 2750 1300
Wire Wire Line
	2750 1300 2950 1300
$Comp
L Device:R_Small R10
U 1 1 5FCEA54D
P 1700 3400
F 0 "R10" H 1759 3446 50  0000 L CNN
F 1 "100k" H 1759 3355 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 3400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810301245_RALEC-RTT051003BTP_C312260.pdf" H 1700 3400 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_RALEC-RTT051003BTP_C312260.html" H 1700 3400 50  0001 C CNN "Link"
F 5 "20" H 1700 3400 50  0001 C CNN "MOQ"
F 6 "RTT051003BTP" H 1700 3400 50  0001 C CNN "MPN"
F 7 "0805" H 1700 3400 50  0001 C CNN "Package"
F 8 "boxA-56" H 1700 3400 50  0001 C CNN "Stock"
F 9 "0.0472" H 1700 3400 50  0001 C CNN "Unit"
F 10 "LCSC" H 1700 3400 50  0001 C CNN "Vendor"
F 11 "Ralec" H 1700 3400 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 1700 3400 50  0001 C CNN "Category"
	1    1700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5FCEB0CB
P 1700 3750
F 0 "R11" H 1759 3796 50  0000 L CNN
F 1 "100k" H 1759 3705 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 3750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810301245_RALEC-RTT051003BTP_C312260.pdf" H 1700 3750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_RALEC-RTT051003BTP_C312260.html" H 1700 3750 50  0001 C CNN "Link"
F 5 "20" H 1700 3750 50  0001 C CNN "MOQ"
F 6 "RTT051003BTP" H 1700 3750 50  0001 C CNN "MPN"
F 7 "0805" H 1700 3750 50  0001 C CNN "Package"
F 8 "boxA-56" H 1700 3750 50  0001 C CNN "Stock"
F 9 "0.0472" H 1700 3750 50  0001 C CNN "Unit"
F 10 "LCSC" H 1700 3750 50  0001 C CNN "Vendor"
F 11 "Ralec" H 1700 3750 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 1700 3750 50  0001 C CNN "Category"
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
$Comp
L Device:C_Small C9
U 1 1 5FDC6A31
P 4100 3700
F 0 "C9" H 4200 3600 50  0000 C CNN
F 1 "1uF" H 4200 3800 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4100 3700 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/C0805C105K3RACTU.pdf" H 4100 3700 50  0001 C CNN
F 4 "C0805C105K3RACTU" H 4100 3700 50  0001 C CNN "MPN"
F 5 "0805" H 4100 3700 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/kemet/c0805c105k3ractu/cap-1-f-25v-10-x7r-0805/dp/1637035" H 4100 3700 50  0001 C CNN "Link"
F 7 "10" H 4100 3700 50  0001 C CNN "MOQ"
F 8 "0.156 " H 4100 3700 50  0001 C CNN "Unit"
F 9 "Element14" H 4100 3700 50  0001 C CNN "Vendor"
F 10 "Kemet" H 4100 3700 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 4100 3700 50  0001 C CNN "Category"
	1    4100 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5FDC7150
P 4100 3900
F 0 "#PWR033" H 4100 3650 50  0001 C CNN
F 1 "GND" H 4105 3727 50  0000 C CNN
F 2 "" H 4100 3900 50  0001 C CNN
F 3 "" H 4100 3900 50  0001 C CNN
	1    4100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3550 4100 3600
Wire Wire Line
	3500 3550 3850 3550
Wire Wire Line
	3850 3600 3850 3550
Connection ~ 3850 3550
Wire Wire Line
	3850 3550 4100 3550
Wire Wire Line
	4000 3100 4100 3100
Wire Wire Line
	3850 3900 3850 3800
Wire Wire Line
	4100 3900 4100 3800
$Comp
L Device:R_Small R12
U 1 1 5FF019EC
P 900 5100
F 0 "R12" H 700 5150 50  0000 L CNN
F 1 "10k" H 700 5050 50  0000 L CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 900 5100 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/427/crcwce3-1223726.pdf" H 900 5100 50  0001 C CNN
F 4 "https://www.mouser.sg/ProductDetail/Vishay-Dale/CRCW080510K0FKEAC?qs=E3Y5ESvWgWORadmUijPtxQ==" H 900 5100 50  0001 C CNN "Link"
F 5 "1" H 900 5100 50  0001 C CNN "MOQ"
F 6 "CRCW080510K0FKEAC" H 900 5100 50  0001 C CNN "MPN"
F 7 "0805" H 900 5100 50  0001 C CNN "Package"
F 8 "boxA-31" H 900 5100 50  0001 C CNN "Stock"
F 9 "0.148" H 900 5100 50  0001 C CNN "Unit"
F 10 "Mouser" H 900 5100 50  0001 C CNN "Vendor"
F 11 "Vishay" H 900 5100 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 900 5100 50  0001 C CNN "Category"
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
P 4100 3300
F 0 "JP2" V 4100 3150 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4150 3150 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4100 3300 50  0001 C CNN
F 3 "~" H 4100 3300 50  0001 C CNN
F 4 "Connector" H 4100 3300 50  0001 C CNN "Category"
F 5 "JP1, JP2, JP3, JP4, JP5" H 4100 3300 50  0001 C CNN "DNP"
	1    4100 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3100 4100 3150
Wire Wire Line
	4100 3450 4100 3550
Connection ~ 4100 3550
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5FFBE9A4
P 1650 4500
F 0 "JP3" H 1650 4400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 1700 4350 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1650 4500 50  0001 C CNN
F 3 "~" H 1650 4500 50  0001 C CNN
F 4 "Connector" H 1650 4500 50  0001 C CNN "Category"
F 5 "JP1, JP2, JP3, JP4, JP5" H 1650 4500 50  0001 C CNN "DNP"
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
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4750 4650 50  0001 C CNN
F 3 "~" H 4750 4650 50  0001 C CNN
F 4 "Connector" H 4750 4650 50  0001 C CNN "Category"
F 5 "JP1, JP2, JP3, JP4, JP5" H 4750 4650 50  0001 C CNN "DNP"
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
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7900 4600 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
F 4 "Connector" H 7900 4600 50  0001 C CNN "Category"
F 5 "JP1, JP2, JP3, JP4, JP5" H 7900 4600 50  0001 C CNN "DNP"
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
Wire Notes Line
	700  700  10550 700 
Text Label 9000 3250 3    47   ~ 0
SCL
Text Label 8900 3250 3    47   ~ 0
SDA
NoConn ~ 7000 3150
NoConn ~ 7100 3150
NoConn ~ 7200 3150
NoConn ~ 6700 1150
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
Text Label 7250 3700 2    50   ~ 0
GPS_RST
Text Label 7250 4000 2    50   ~ 0
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
Wire Wire Line
	10200 2250 10450 2250
Wire Wire Line
	5750 1550 5750 2050
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
Text Label 10350 3150 0    50   ~ 0
RST
Wire Wire Line
	10250 3150 10250 3400
Wire Wire Line
	9800 3150 10250 3150
Text Label 9750 3500 0    50   ~ 0
TX_LED
Text Label 6550 1100 2    50   ~ 0
RX_LED
$Comp
L power:+3V3 #PWR011
U 1 1 5F907590
P 10850 3100
F 0 "#PWR011" H 10850 2950 50  0001 C CNN
F 1 "+3V3" H 10865 3273 50  0000 C CNN
F 2 "" H 10850 3100 50  0001 C CNN
F 3 "" H 10850 3100 50  0001 C CNN
	1    10850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3400 10250 3500
Connection ~ 10250 3400
Wire Wire Line
	10850 3400 10850 3100
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
F 2 "Push_Button:Tactile_pushbutton" H 10250 3900 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32645332799.html" H 10250 3900 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32645332799.html" H 10250 3700 50  0001 C CNN "Link"
F 5 "10" H 10250 3700 50  0001 C CNN "MOQ"
F 6 "RTLECS Tactile side-actuated switch" H 10250 3700 50  0001 C CNN "MPN"
F 7 "SMD" H 10250 3700 50  0001 C CNN "Package"
F 8 "boxA-14" H 10250 3700 50  0001 C CNN "Stock"
F 9 "0.19" H 10250 3700 50  0001 C CNN "Unit"
F 10 "AliExpress" H 10250 3700 50  0001 C CNN "Vendor"
F 11 "RTLECS" H 10250 3700 50  0001 C CNN "Manufacturer"
F 12 "Switch" H 10250 3700 50  0001 C CNN "Category"
	1    10250 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F902508
P 10450 3400
F 0 "R2" V 10350 3400 50  0000 C CNN
F 1 "10k" V 10550 3400 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10450 3400 50  0001 C CNN
F 3 "https://www.mouser.sg/datasheet/2/427/crcwce3-1223726.pdf" H 10450 3400 50  0001 C CNN
F 4 "https://www.mouser.sg/ProductDetail/Vishay-Dale/CRCW080510K0FKEAC?qs=E3Y5ESvWgWORadmUijPtxQ==" H 10450 3400 50  0001 C CNN "Link"
F 5 "1" H 10450 3400 50  0001 C CNN "MOQ"
F 6 "CRCW080510K0FKEAC" H 10450 3400 50  0001 C CNN "MPN"
F 7 "0805" H 10450 3400 50  0001 C CNN "Package"
F 8 "boxA-31" H 10450 3400 50  0001 C CNN "Stock"
F 9 "0.148" H 10450 3400 50  0001 C CNN "Unit"
F 10 "Mouser" H 10450 3400 50  0001 C CNN "Vendor"
F 11 "Vishay" H 10450 3400 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 10450 3400 50  0001 C CNN "Category"
	1    10450 3400
	0    1    1    0   
$EndComp
NoConn ~ 9400 3150
NoConn ~ 8400 3150
NoConn ~ 8000 3150
NoConn ~ 7900 3150
NoConn ~ 6800 3150
NoConn ~ 6700 3150
NoConn ~ 7300 1150
NoConn ~ 7400 1150
Text Label 7250 3500 2    50   ~ 0
EINK_RST
Text Label 7200 900  0    50   ~ 0
CLK
Text Label 8850 4150 0    50   ~ 0
EINK_CS
Text Label 7250 3600 2    50   ~ 0
EINK_DC
Text Label 8850 3850 0    50   ~ 0
EINK_BUSY
Text Label 8850 3950 0    50   ~ 0
LORA_RST
Text Label 7250 4100 2    50   ~ 0
LORA_CS
Text Label 7250 3900 2    50   ~ 0
GPS_TX
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
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2048170.pdf" H 5350 2350 50  0001 C CNN
F 4 "GCM21BR72A104KA37L" H 5350 2350 50  0001 C CNN "MPN"
F 5 "0805" H 5350 2350 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/murata/gcm21br72a104ka37l/cap-0-1-f-100v-10-x7r-0805/dp/2470440" H 5350 2350 50  0001 C CNN "Link"
F 7 "5" H 5350 2350 50  0001 C CNN "MOQ"
F 8 "boxA-53" H 5350 2350 50  0001 C CNN "Stock"
F 9 "0.207" H 5350 2350 50  0001 C CNN "Unit"
F 10 "Element14" H 5350 2350 50  0001 C CNN "Vendor"
F 11 "Murata" H 5350 2350 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 5350 2350 50  0001 C CNN "Category"
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
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5000 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2048170.pdf" H 5000 2250 50  0001 C CNN
F 4 "GCM21BR72A104KA37L" H 5000 2250 50  0001 C CNN "MPN"
F 5 "0805" H 5000 2250 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/murata/gcm21br72a104ka37l/cap-0-1-f-100v-10-x7r-0805/dp/2470440" H 5000 2250 50  0001 C CNN "Link"
F 7 "5" H 5000 2250 50  0001 C CNN "MOQ"
F 8 "boxA-53" H 5000 2250 50  0001 C CNN "Stock"
F 9 "0.207" H 5000 2250 50  0001 C CNN "Unit"
F 10 "Element14" H 5000 2250 50  0001 C CNN "Vendor"
F 11 "Murata" H 5000 2250 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 5000 2250 50  0001 C CNN "Category"
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
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 2050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2048170.pdf" H 5600 2050 50  0001 C CNN
F 4 "GCM21BR72A104KA37L" H 5600 2050 50  0001 C CNN "MPN"
F 5 "0805" H 5600 2050 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/murata/gcm21br72a104ka37l/cap-0-1-f-100v-10-x7r-0805/dp/2470440" H 5600 2050 50  0001 C CNN "Link"
F 7 "5" H 5600 2050 50  0001 C CNN "MOQ"
F 8 "boxA-53" H 5600 2050 50  0001 C CNN "Stock"
F 9 "0.207" H 5600 2050 50  0001 C CNN "Unit"
F 10 "Element14" H 5600 2050 50  0001 C CNN "Vendor"
F 11 "Murata" H 5600 2050 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 5600 2050 50  0001 C CNN "Category"
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
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 1850 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/C0805C105K3RACTU.pdf" H 6200 1850 50  0001 C CNN
F 4 "C0805C105K3RACTU" H 6200 1850 50  0001 C CNN "MPN"
F 5 "0805" H 6200 1850 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/kemet/c0805c105k3ractu/cap-1-f-25v-10-x7r-0805/dp/1637035" H 6200 1850 50  0001 C CNN "Link"
F 7 "10" H 6200 1850 50  0001 C CNN "MOQ"
F 8 "0.156 " H 6200 1850 50  0001 C CNN "Unit"
F 9 "Element14" H 6200 1850 50  0001 C CNN "Vendor"
F 10 "Kemet" H 6200 1850 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 6200 1850 50  0001 C CNN "Category"
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
F 4 "ATSAMD21G18A-AU" H 8300 2150 50  0001 C CNN "MPN"
F 5 "https://lcsc.com/product-detail/ATMEL-AVR_Microchip-Tech-ATSAMD21G18A-AU_C78624.html" H 8300 2150 50  0001 C CNN "Link"
F 6 "1" H 8300 2150 50  0001 C CNN "MOQ"
F 7 "TQFP-48" H 8300 2150 50  0001 C CNN "Package"
F 8 "boxA-59 " H 8300 2150 50  0001 C CNN "Stock"
F 9 "4.9012" H 8300 2150 50  0001 C CNN "Unit"
F 10 "LCSC" H 8300 2150 50  0001 C CNN "Vendor"
F 11 "Atmel" H 8300 2150 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 8300 2150 50  0001 C CNN "Category"
	1    8300 2150
	0    -1   -1   0   
$EndComp
Text Notes 4600 3850 0    47   ~ 0
Arduino Zero pins | SAMD21G pins\n\n1. GPS_TX - D0/RX - PA11\n2. GPS_RX - D1/TX - PA10\n3. LORA_CS - D5 - PA15\n4. LORA_RST - D6 - PA20\n5. LORA_DATA - D11 - PA16\n6. EINK_BUSY - D7 - PA21\n7. EINK_RST - D8 - PA06\n8. EINK_DC - D9 - PA07\n9. EINK_CS - D10 - PA18\n10. COPI - ICSP_COPI - PB10\n11. CLK - ICSP_SCK - PB11\n12. CIPO - ICSP_CIPO - PA19\n13. BATT - D2 - PA14\n14. GPS_RST - D3 - PA09
Wire Notes Line
	5550 950  5550 700 
Wire Notes Line
	4450 950  5550 950 
Text Notes 4550 900  0    79   ~ 0
Microcontroller
Wire Notes Line
	10600 700  11000 700 
Wire Notes Line
	700  4250 11000 4250
Wire Notes Line
	4450 700  4450 4550
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
Text Label 6850 3400 2    47   ~ 0
A0
Text Label 6550 1000 2    50   ~ 0
A1
Text Label 6550 900  2    50   ~ 0
A2
Text Label 2600 3050 2    47   ~ 0
VBUS
Wire Wire Line
	1100 1200 1550 1200
Wire Notes Line
	700  2900 4450 2900
Connection ~ 2750 1300
$Comp
L Connector:USB_B_Micro J2
U 1 1 5FD89E81
P 2000 2150
F 0 "J2" H 1850 2500 50  0000 C CNN
F 1 "USB_B_Micro" H 1500 2150 50  0000 C CNN
F 2 "Connector_USB-B_Horizontal:USB_Micro-B_Horizontal-U254-051T-4BH23-S2B" H 2150 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2002271812_XKB-Connectivity-U254-051T-4BH23-S2B_C319164.pdf" H 2150 2100 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/USB-Connectors_XKB-Connectivity-U254-051T-4BH23-S2B_C319164.html" H 2000 2150 50  0001 C CNN "Link"
F 5 "10" H 2000 2150 50  0001 C CNN "MOQ"
F 6 "U254-051T-4BH23-S2B" H 2000 2150 50  0001 C CNN "MPN"
F 7 "SMD" H 2000 2150 50  0001 C CNN "Package"
F 8 "boxA-60 " H 2000 2150 50  0001 C CNN "Stock"
F 9 "0.0786" H 2000 2150 50  0001 C CNN "Unit"
F 10 "LCSC" H 2000 2150 50  0001 C CNN "Vendor"
F 11 "XKB Connectivity" H 2000 2150 50  0001 C CNN "Manufacturer"
F 12 "Connector" H 2000 2150 50  0001 C CNN "Category"
	1    2000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5FDB8E09
P 2200 1300
F 0 "D1" H 2200 1150 50  0000 C CNN
F 1 "D_Schottky" H 2200 1450 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2200 1300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/676305.pdf" H 2200 1300 50  0001 C CNN
F 4 "https://sg.element14.com/nexperia/pmeg3020eh-115/diode-schottky-2a-30v-sod-123f/dp/1510687?st=PMEG3020EH,115" H 2200 1300 50  0001 C CNN "Link"
F 5 "5" H 2200 1300 50  0001 C CNN "MOQ"
F 6 "PMEG3020EH,115" H 2200 1300 50  0001 C CNN "MPN"
F 7 "SOD-123F" H 2200 1300 50  0001 C CNN "Package"
F 8 "boxA-52" H 2200 1300 50  0001 C CNN "Stock"
F 9 "0.438 " H 2200 1300 50  0001 C CNN "Unit"
F 10 "Element14" H 2200 1300 50  0001 C CNN "Vendor"
F 11 "Nexperia" H 2200 1300 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2200 1300 50  0001 C CNN "Category"
	1    2200 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1950 2450 1300
NoConn ~ 2300 2350
Text Label 2400 2150 0    47   ~ 0
USB_D+
Text Label 2400 2250 0    47   ~ 0
USB_D-
Wire Wire Line
	2300 2150 2400 2150
Wire Wire Line
	2300 2250 2400 2250
$Comp
L power:GND #PWR010
U 1 1 5FDDF220
P 2000 2600
F 0 "#PWR010" H 2000 2350 50  0001 C CNN
F 1 "GND" H 2005 2427 50  0000 C CNN
F 2 "" H 2000 2600 50  0001 C CNN
F 3 "" H 2000 2600 50  0001 C CNN
	1    2000 2600
	1    0    0    -1  
$EndComp
Text Label 2100 950  0    47   ~ 0
VBAT
Wire Wire Line
	2000 950  2000 1300
Text Label 2550 1950 0    47   ~ 0
VBUS
Wire Wire Line
	2350 1300 2450 1300
Connection ~ 2450 1950
Wire Wire Line
	2050 1300 2000 1300
Wire Wire Line
	2300 1950 2450 1950
$Comp
L Device:C_Small C10
U 1 1 5FBFB9C3
P 2650 1550
F 0 "C10" H 2450 1650 50  0000 L CNN
F 1 "10uF" H 2450 1450 50  0000 L CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 1550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2842314.pdf" H 2650 1550 50  0001 C CNN
F 4 "LMK212ABJ106KGHT" H 2650 1550 50  0001 C CNN "MPN"
F 5 "0805" H 2650 1550 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/taiyo-yuden/lmk212abj106kght/capacitor-mlcc-0805-10v-x5r-10uf/dp/3217584" H 2650 1550 50  0001 C CNN "Link"
F 7 "1" H 2650 1550 50  0001 C CNN "MOQ"
F 8 "boxA-30" H 2650 1550 50  0001 C CNN "Stock"
F 9 "0.252" H 2650 1550 50  0001 C CNN "Unit"
F 10 "Element14" H 2650 1550 50  0001 C CNN "Vendor"
F 11 "Taiyo Yuden" H 2650 1550 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2650 1550 50  0001 C CNN "Category"
	1    2650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5FBFBFA0
P 2650 1650
F 0 "#PWR036" H 2650 1400 50  0001 C CNN
F 1 "GND" H 2655 1477 50  0000 C CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
Connection ~ 2450 1300
Wire Wire Line
	1950 1300 2000 1300
Connection ~ 2000 1300
NoConn ~ 1900 2550
Wire Wire Line
	2000 2550 2000 2600
Wire Wire Line
	2450 1300 2650 1300
Wire Wire Line
	2650 1450 2650 1300
Connection ~ 2650 1300
Wire Wire Line
	2650 1300 2750 1300
$Comp
L Device:R_Small R1
U 1 1 5FE5027C
P 3600 3200
F 0 "R1" V 3500 3200 50  0000 C CNN
F 1 "1k" V 3700 3200 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 3200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 3600 3200 50  0001 C CNN
F 4 "https://sg.element14.com/multicomp/mcwr08x1001ftl/res-1k-1-0-125w-0805-thick-film/dp/2447587" H 3600 3200 50  0001 C CNN "Link"
F 5 "10" H 3600 3200 50  0001 C CNN "MOQ"
F 6 "MCWR08X1001FTL" H 3600 3200 50  0001 C CNN "MPN"
F 7 "0805" H 3600 3200 50  0001 C CNN "Package"
F 8 "boxA-18" H 3600 3200 50  0001 C CNN "Stock"
F 9 "0.012" H 3600 3200 50  0001 C CNN "Unit"
F 10 "Element14" H 3600 3200 50  0001 C CNN "Vendor"
F 11 "Multicomp" H 3600 3200 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3600 3200 50  0001 C CNN "Category"
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FE4F6E4
P 3250 3050
F 0 "D2" H 3250 2950 50  0000 C CNN
F 1 "ORANGE" H 3200 3200 50  0000 C CNN
F 2 "Passives_0805:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 3050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2166990.pdf" H 3250 3050 50  0001 C CNN
F 4 "https://sg.element14.com/rohm/sml-d15dwt86/led-orange-224mcd-605nm-smd-0603/dp/2672849" H 3250 3050 50  0001 C CNN "Link"
F 5 "1" H 3250 3050 50  0001 C CNN "MOQ"
F 6 "SML-D15DWT86" H 3250 3050 50  0001 C CNN "MPN"
F 7 "0805" H 3250 3050 50  0001 C CNN "Package"
F 8 "0.42" H 3250 3050 50  0001 C CNN "Unit"
F 9 "Element14" H 3250 3050 50  0001 C CNN "Vendor"
F 10 "Rohm" H 3250 3050 50  0001 C CNN "Manufacturer"
F 11 "Electronics" H 3250 3050 50  0001 C CNN "Category"
	1    3250 3050
	-1   0    0    1   
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5FD8DACF
P 3100 3650
F 0 "U3" H 3350 3900 50  0000 C CNN
F 1 "MCP7383" H 3300 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3150 3400 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 2950 3600 50  0001 C CNN
F 4 "MCP73831T-2ACI/OT" H 3100 3650 50  0001 C CNN "MPN"
F 5 "https://sg.element14.com/microchip/mcp73831t-2aci-ot/li-ion-li-poly-charge-controller/dp/1332158" H 3100 3650 50  0001 C CNN "Link"
F 6 "1" H 3100 3650 50  0001 C CNN "MOQ"
F 7 "SOT-23-5" H 3100 3650 50  0001 C CNN "Package"
F 8 "boxB-158" H 3100 3650 50  0001 C CNN "Stock"
F 9 "0.837" H 3100 3650 50  0001 C CNN "Unit"
F 10 "Element14" H 3100 3650 50  0001 C CNN "Vendor"
F 11 "Microchip" H 3100 3650 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 3100 3650 50  0001 C CNN "Category"
	1    3100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3350 3100 3050
Wire Wire Line
	3400 3050 3600 3050
Wire Wire Line
	3600 3050 3600 3100
Wire Wire Line
	3600 3300 3600 3750
Wire Wire Line
	3500 3750 3600 3750
Wire Wire Line
	3100 3050 2650 3050
Connection ~ 3100 3050
$Comp
L Device:C_Small C11
U 1 1 5FDECB42
P 2650 3200
F 0 "C11" H 2750 3100 50  0000 C CNN
F 1 "10uF" H 2750 3300 50  0000 C CNN
F 2 "Passives_0805:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 3200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2842314.pdf" H 2650 3200 50  0001 C CNN
F 4 "LMK212ABJ106KGHT" H 2650 3200 50  0001 C CNN "MPN"
F 5 "0805" H 2650 3200 50  0001 C CNN "Package"
F 6 "https://sg.element14.com/taiyo-yuden/lmk212abj106kght/capacitor-mlcc-0805-10v-x5r-10uf/dp/3217584" H 2650 3200 50  0001 C CNN "Link"
F 7 "1" H 2650 3200 50  0001 C CNN "MOQ"
F 8 "boxA-30" H 2650 3200 50  0001 C CNN "Stock"
F 9 "0.252" H 2650 3200 50  0001 C CNN "Unit"
F 10 "Element14" H 2650 3200 50  0001 C CNN "Vendor"
F 11 "Taiyo Yuden" H 2650 3200 50  0001 C CNN "Manufacturer"
F 12 "Electronics" H 2650 3200 50  0001 C CNN "Category"
	1    2650 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5FDED444
P 2650 3350
F 0 "#PWR037" H 2650 3100 50  0001 C CNN
F 1 "GND" H 2655 3177 50  0000 C CNN
F 2 "" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2650 3100
Wire Wire Line
	2650 3300 2650 3350
Connection ~ 2650 3050
Wire Wire Line
	2650 3050 2600 3050
Wire Wire Line
	6500 5300 7150 5300
Text Label 6550 800  2    50   ~ 0
COPI
Wire Wire Line
	7200 900  7400 900 
$Comp
L Device:R_Small R13
U 1 1 5FC7752E
P 7950 900
F 0 "R13" V 7850 900 50  0000 C CNN
F 1 "DNP" V 8050 900 50  0000 C CNN
F 2 "Passives_0805:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 900 50  0001 C CNN
F 3 "~" H 7950 900 50  0001 C CNN
F 4 "Electronics" H 7950 900 50  0001 C CNN "Category"
F 5 "R13" H 7950 900 50  0001 C CNN "DNP"
	1    7950 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 900  7200 1150
$Comp
L power:+3V3 #PWR032
U 1 1 5FCB8FB1
P 8150 900
F 0 "#PWR032" H 8150 750 50  0001 C CNN
F 1 "+3V3" H 8300 950 50  0000 C CNN
F 2 "" H 8150 900 50  0001 C CNN
F 3 "" H 8150 900 50  0001 C CNN
	1    8150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 900  8150 900 
Wire Wire Line
	7650 900  7850 900 
Connection ~ 7650 900 
$Comp
L Connector:TestPoint_Probe TP13
U 1 1 609A9AEB
P 6750 3900
F 0 "TP13" V 6800 4100 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3955 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3900 50  0001 C CNN
F 3 "~" H 6950 3900 50  0001 C CNN
	1    6750 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3500 7300 3500
$Comp
L Connector:TestPoint_Probe TP9
U 1 1 609E0DC0
P 6750 3500
F 0 "TP9" V 6800 3700 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3555 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3500 50  0001 C CNN
F 3 "~" H 6950 3500 50  0001 C CNN
	1    6750 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3800 7700 3800
$Comp
L Connector:TestPoint_Probe TP12
U 1 1 609EE554
P 6750 3800
F 0 "TP12" V 6800 4000 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3855 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3800 50  0001 C CNN
F 3 "~" H 6950 3800 50  0001 C CNN
	1    6750 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 4000 8100 4000
$Comp
L Connector:TestPoint_Probe TP14
U 1 1 609FBC17
P 6750 4000
F 0 "TP14" V 6800 4200 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 4055 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 4000 50  0001 C CNN
F 3 "~" H 6950 4000 50  0001 C CNN
	1    6750 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3700 7600 3700
$Comp
L Connector:TestPoint_Probe TP11
U 1 1 60A095C7
P 6750 3700
F 0 "TP11" V 6800 3900 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3755 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3700 50  0001 C CNN
F 3 "~" H 6950 3700 50  0001 C CNN
	1    6750 3700
	0    -1   -1   0   
$EndComp
NoConn ~ 7500 3150
Wire Wire Line
	6750 4100 8200 4100
$Comp
L Connector:TestPoint_Probe TP15
U 1 1 60A237BD
P 6750 4100
F 0 "TP15" V 6800 4300 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 4155 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 4100 50  0001 C CNN
F 3 "~" H 6950 4100 50  0001 C CNN
	1    6750 4100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint_Probe TP20
U 1 1 60A3DD9B
P 9350 3950
F 0 "TP20" H 9550 4000 50  0000 C CNN
F 1 "TestPoint_Probe" V 9549 4005 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9550 3950 50  0001 C CNN
F 3 "~" H 9550 3950 50  0001 C CNN
	1    9350 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP19
U 1 1 60A3FB63
P 9350 3850
F 0 "TP19" H 9550 3900 50  0000 C CNN
F 1 "TestPoint_Probe" V 9549 3905 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9550 3850 50  0001 C CNN
F 3 "~" H 9550 3850 50  0001 C CNN
	1    9350 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP22
U 1 1 60A4CEB1
P 9350 4150
F 0 "TP22" H 9550 4200 50  0000 C CNN
F 1 "TestPoint_Probe" V 9549 4205 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9550 4150 50  0001 C CNN
F 3 "~" H 9550 4150 50  0001 C CNN
	1    9350 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP23
U 1 1 60A5A1DB
P 10550 3150
F 0 "TP23" H 10750 3200 50  0000 C CNN
F 1 "TestPoint_Probe" V 10749 3205 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 10750 3150 50  0001 C CNN
F 3 "~" H 10750 3150 50  0001 C CNN
	1    10550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3150 10550 3150
$Comp
L Connector:TestPoint_Probe TP5
U 1 1 60AB52BE
P 6200 800
F 0 "TP5" H 6400 850 50  0000 C CNN
F 1 "TestPoint_Probe" V 6399 855 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6400 800 50  0001 C CNN
F 3 "~" H 6400 800 50  0001 C CNN
	1    6200 800 
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP21
U 1 1 60AC2BF2
P 9350 4050
F 0 "TP21" H 9550 4100 50  0000 C CNN
F 1 "TestPoint_Probe" V 9549 4105 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9550 4050 50  0001 C CNN
F 3 "~" H 9550 4050 50  0001 C CNN
	1    9350 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP16
U 1 1 60AC2EF5
P 7400 900
F 0 "TP16" H 7600 1000 50  0000 C CNN
F 1 "TestPoint_Probe" V 7599 955 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 7600 900 50  0001 C CNN
F 3 "~" H 7600 900 50  0001 C CNN
	1    7400 900 
	1    0    0    -1  
$EndComp
Connection ~ 7400 900 
Wire Wire Line
	7400 900  7650 900 
Wire Wire Line
	10550 3400 10850 3400
Wire Wire Line
	2000 950  2400 950 
Wire Wire Line
	2450 1950 2800 1950
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 60AEBBE3
P 2400 950
F 0 "TP1" H 2600 1050 50  0000 C CNN
F 1 "TestPoint_Probe" V 2599 1005 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 2600 950 50  0001 C CNN
F 3 "~" H 2600 950 50  0001 C CNN
	1    2400 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 60AEC454
P 2800 1950
F 0 "TP2" H 2900 1900 50  0000 C CNN
F 1 "TestPoint_Probe" V 2999 2005 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 3000 1950 50  0001 C CNN
F 3 "~" H 3000 1950 50  0001 C CNN
	1    2800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3600 7400 3600
$Comp
L Connector:TestPoint_Probe TP10
U 1 1 60AFA1CC
P 6750 3600
F 0 "TP10" V 6800 3800 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3655 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3600 50  0001 C CNN
F 3 "~" H 6950 3600 50  0001 C CNN
	1    6750 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 3450 8950 3450
Wire Wire Line
	9000 3150 9000 3450
$Comp
L Connector:TestPoint_Probe TP17
U 1 1 60B38BE7
P 8850 3450
F 0 "TP17" H 9050 3500 50  0000 C CNN
F 1 "TestPoint_Probe" V 9049 3505 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9050 3450 50  0001 C CNN
F 3 "~" H 9050 3450 50  0001 C CNN
	1    8850 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint_Probe TP18
U 1 1 60B377F7
P 8950 3450
F 0 "TP18" H 9150 3500 50  0000 C CNN
F 1 "TestPoint_Probe" V 9149 3505 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 9150 3450 50  0001 C CNN
F 3 "~" H 9150 3450 50  0001 C CNN
	1    8950 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3450 8850 3450
Wire Wire Line
	8900 3150 8900 3450
Wire Wire Line
	8800 3850 9350 3850
Wire Wire Line
	8700 3950 9350 3950
Wire Wire Line
	8600 4050 9350 4050
Wire Wire Line
	8500 4150 9350 4150
Wire Wire Line
	8800 3150 8800 3850
Wire Wire Line
	8700 3150 8700 3950
Wire Wire Line
	8600 3150 8600 4050
Wire Wire Line
	8500 3150 8500 4150
Wire Wire Line
	6900 3400 6750 3400
Wire Wire Line
	6900 3150 6900 3400
$Comp
L Connector:TestPoint_Probe TP8
U 1 1 60BADACA
P 6750 3400
F 0 "TP8" V 6800 3600 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 3455 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 3400 50  0001 C CNN
F 3 "~" H 6950 3400 50  0001 C CNN
	1    6750 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 800  6200 800 
Wire Wire Line
	7100 800  7100 1150
Wire Wire Line
	7000 1150 7000 900 
Wire Wire Line
	6900 1150 6900 1000
Wire Wire Line
	6550 1100 6800 1100
Wire Wire Line
	6800 1100 6800 1150
Wire Wire Line
	6200 900  7000 900 
Wire Wire Line
	6200 1000 6900 1000
$Comp
L Connector:TestPoint_Probe TP6
U 1 1 60C02A35
P 6200 900
F 0 "TP6" H 6400 950 50  0000 C CNN
F 1 "TestPoint_Probe" V 6399 955 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6400 900 50  0001 C CNN
F 3 "~" H 6400 900 50  0001 C CNN
	1    6200 900 
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP7
U 1 1 60C02E92
P 6200 1000
F 0 "TP7" H 6400 1050 50  0000 C CNN
F 1 "TestPoint_Probe" V 6399 1055 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6400 1000 50  0001 C CNN
F 3 "~" H 6400 1000 50  0001 C CNN
	1    6200 1000
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 60C03355
P 4400 1250
F 0 "TP4" V 4550 1450 50  0000 C CNN
F 1 "TestPoint_Probe" V 4599 1305 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 4600 1250 50  0001 C CNN
F 3 "~" H 4600 1250 50  0001 C CNN
	1    4400 1250
	0    -1   -1   0   
$EndComp
Connection ~ 4400 1250
Wire Wire Line
	4400 1250 4400 1150
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 60C043CD
P 3250 1800
F 0 "TP3" V 3300 2000 50  0000 C CNN
F 1 "TestPoint_Probe" V 3449 1855 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 3450 1800 50  0001 C CNN
F 3 "~" H 3450 1800 50  0001 C CNN
	1    3250 1800
	0    -1   -1   0   
$EndComp
Connection ~ 3250 1800
Wire Notes Line
	700  6300 11000 6300
Wire Notes Line
	11000 700  11000 6300
Wire Notes Line
	700  700  700  6300
Text Notes 7800 3250 3    47   ~ 0
D0
Text Notes 7700 3250 3    47   ~ 0
D1
Text Notes 7600 3250 3    47   ~ 0
D3
Text Notes 7400 3250 3    47   ~ 0
D9
Text Notes 7300 3250 3    47   ~ 0
D8
Text Notes 8100 3250 3    47   ~ 0
D2
Text Notes 8200 3250 3    47   ~ 0
D5
Wire Wire Line
	6750 3900 7800 3900
Text Notes 8500 3250 3    47   ~ 0
D10
Text Notes 8600 3250 3    47   ~ 0
D12
Text Notes 8700 3250 3    47   ~ 0
D6
Text Notes 8800 3250 3    47   ~ 0
D7
Text Notes 7200 1150 1    47   ~ 0
D13
Text Notes 7100 1150 1    47   ~ 0
D11
Text Notes 8300 3250 3    47   ~ 0
D11
Wire Notes Line
	4550 2550 5900 2550
Text Notes 4600 4150 0    39   ~ 0
Pin mappings: \nhttps://github.com\n/arduino/ArduinoCore-samd\n/tree/master/variants/arduino_zero
Wire Wire Line
	8300 3150 8300 4200
Wire Wire Line
	8300 4200 6750 4200
Text Label 7250 4200 2    50   ~ 0
LORA_DATA
$Comp
L Connector:TestPoint_Probe TP24
U 1 1 60A6E589
P 6750 4200
F 0 "TP24" V 6800 4400 50  0000 C CNN
F 1 "TestPoint_Probe" V 6949 4255 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 6950 4200 50  0001 C CNN
F 3 "~" H 6950 4200 50  0001 C CNN
	1    6750 4200
	0    -1   -1   0   
$EndComp
Text Label 7250 3800 2    50   ~ 0
GPS_RX
Wire Notes Line
	4550 4200 5900 4200
Wire Notes Line
	4550 2550 4550 4200
Wire Notes Line
	5900 2550 5900 4200
Text Label 2000 5200 0    50   ~ 0
GPS_RX
$EndSCHEMATC
