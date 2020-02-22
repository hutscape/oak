EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Oak"
Date "2019-11-09"
Rev "V1.0"
Comp "Hutscape"
Comment1 "Measure outdoor distance between 2 keychain holders"
Comment2 ""
Comment3 "Project website: https://hutscape.com/oak"
Comment4 "Authored by: Sayanee Basu"
$EndDescr
$Comp
L E-Ink:Waveshare_1in54_epaper U2
U 1 1 5E0F72C5
P 6900 3500
F 0 "U2" H 6500 3900 50  0000 C CNN
F 1 "Waveshare_1in54_epaper" H 6600 3150 50  0000 C CNN
F 2 "" H 6950 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Text Label 6200 3700 2    50   ~ 0
DIN
Wire Wire Line
	6200 3700 6350 3700
Text Label 6200 3600 2    50   ~ 0
CLK
Wire Wire Line
	6200 3600 6350 3600
Text Label 6200 3500 2    50   ~ 0
CS_D10
Wire Wire Line
	6200 3500 6350 3500
Text Label 7550 3400 0    50   ~ 0
DC_D9
Wire Wire Line
	7550 3400 7400 3400
Text Label 6200 3300 2    50   ~ 0
RST_D8
Wire Wire Line
	6350 3300 6200 3300
Text Label 7550 3300 0    50   ~ 0
BUSY_D7
Wire Wire Line
	7400 3300 7550 3300
$Comp
L power:+3V3 #PWR0101
U 1 1 5E107C27
P 6900 2850
F 0 "#PWR0101" H 6900 2700 50  0001 C CNN
F 1 "+3V3" H 6915 3023 50  0000 C CNN
F 2 "" H 6900 2850 50  0001 C CNN
F 3 "" H 6900 2850 50  0001 C CNN
	1    6900 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5E111320
P 1850 3450
F 0 "#PWR0102" H 1850 3300 50  0001 C CNN
F 1 "+5V" H 1865 3623 50  0000 C CNN
F 2 "" H 1850 3450 50  0001 C CNN
F 3 "" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3450 1850 3550
NoConn ~ 2000 3650
NoConn ~ 2000 3550
Wire Wire Line
	6900 2850 6900 2950
Text Notes 2100 4350 2    50   ~ 0
Refer to application\ncircuit for SAMD21G\nto connect the\npower pins
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E111EB2
P 1850 3550
F 0 "#FLG0101" H 1850 3625 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 3677 50  0000 L CNN
F 2 "" H 1850 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	0    -1   -1   0   
$EndComp
Connection ~ 1850 3550
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E112406
P 6900 2950
F 0 "#FLG0102" H 6900 3025 50  0001 C CNN
F 1 "PWR_FLAG" V 6900 3077 50  0000 L CNN
F 2 "" H 6900 2950 50  0001 C CNN
F 3 "~" H 6900 2950 50  0001 C CNN
	1    6900 2950
	0    -1   -1   0   
$EndComp
Connection ~ 6900 2950
Wire Wire Line
	6900 2950 6900 3050
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-AUT U1
U 1 1 5E10452B
P 3900 3750
F 0 "U1" H 3150 5550 50  0000 C CNN
F 1 "ATSAMD21G18A-AUT" V 4900 2400 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 2950 2000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAMD21-Family-DataSheet-DS40001882D.pdf" H 3900 4750 50  0001 C CNN
F 4 "Or dev boards like Arduino M0 or RobotDyn M0 mini" V 4800 3050 50  0000 C CNN "Description"
	1    3900 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 3850 2000 3850
Wire Wire Line
	1850 3550 1850 3850
Wire Wire Line
	5800 3850 5900 3850
Wire Wire Line
	5900 3850 5900 4100
Wire Wire Line
	5900 4100 6600 4100
Wire Wire Line
	7200 4100 7200 3900
Wire Wire Line
	5800 3650 5900 3650
Wire Wire Line
	5900 3650 5900 3850
Connection ~ 5900 3850
$Comp
L power:GND #PWR0103
U 1 1 5E1246CF
P 6600 4200
F 0 "#PWR0103" H 6600 3950 50  0001 C CNN
F 1 "GND" H 6605 4027 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4100 6600 4200
Connection ~ 6600 4100
Wire Wire Line
	6600 4100 7050 4100
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E1255B3
P 7050 4100
F 0 "#FLG0103" H 7050 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 4273 50  0000 C CNN
F 2 "" H 7050 4100 50  0001 C CNN
F 3 "~" H 7050 4100 50  0001 C CNN
	1    7050 4100
	-1   0    0    1   
$EndComp
Connection ~ 7050 4100
Wire Wire Line
	7050 4100 7200 4100
Text Label 4500 4950 0    50   ~ 0
BUSY_D7
Wire Wire Line
	4400 4750 4400 4950
Wire Wire Line
	4400 4950 4500 4950
Text Label 3100 5050 0    50   ~ 0
RST_D8
Text Label 3100 4900 0    50   ~ 0
DC_D9
Wire Wire Line
	3000 4750 3000 4900
Wire Wire Line
	3000 4900 3100 4900
Wire Wire Line
	2900 4750 2900 5050
Wire Wire Line
	2900 5050 3100 5050
Text Label 4200 5100 0    50   ~ 0
CS_D10
Wire Wire Line
	4100 4750 4100 5100
Wire Wire Line
	4100 5100 4200 5100
Text Label 2900 2550 0    50   ~ 0
CLK
Wire Wire Line
	2800 2750 2800 2550
Wire Wire Line
	2800 2550 2900 2550
Text Label 2900 2400 0    50   ~ 0
DIN
Wire Wire Line
	2900 2400 2700 2400
Wire Wire Line
	2700 2400 2700 2750
Text Notes 6250 5000 0    50   ~ 0
For M0 dev boards:\n#define RST_PIN   8\n#define DC_PIN    9\n#define CS_PIN    10\n#define BUSY_PIN  7
Wire Notes Line
	6200 4550 7150 4550
Wire Notes Line
	7150 4550 7150 5050
Wire Notes Line
	7150 5050 6200 5050
Wire Notes Line
	6200 5050 6200 4550
Wire Notes Line
	2150 4000 2150 4400
Wire Notes Line
	2150 4400 1300 4400
Wire Notes Line
	1300 4400 1300 4000
Wire Notes Line
	1300 4000 2150 4000
NoConn ~ 2300 2750
NoConn ~ 2400 2750
NoConn ~ 2500 2750
NoConn ~ 2600 2750
NoConn ~ 2900 2750
NoConn ~ 3000 2750
NoConn ~ 2300 4750
NoConn ~ 2400 4750
NoConn ~ 2500 4750
NoConn ~ 2600 4750
NoConn ~ 2700 4750
NoConn ~ 2800 4750
NoConn ~ 3100 4750
NoConn ~ 3200 4750
NoConn ~ 3300 4750
NoConn ~ 3400 4750
NoConn ~ 3500 4750
NoConn ~ 3600 4750
NoConn ~ 3700 4750
NoConn ~ 3800 4750
NoConn ~ 3900 4750
NoConn ~ 4000 4750
NoConn ~ 4200 4750
NoConn ~ 4300 4750
NoConn ~ 4500 4750
NoConn ~ 4600 4750
NoConn ~ 4700 4750
NoConn ~ 4800 4750
NoConn ~ 4900 4750
NoConn ~ 5000 4750
NoConn ~ 5100 4750
NoConn ~ 5200 4750
NoConn ~ 5400 4750
Wire Wire Line
	2000 3950 1850 3950
Wire Wire Line
	1850 3950 1850 3850
Connection ~ 1850 3850
$EndSCHEMATC
