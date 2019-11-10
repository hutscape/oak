EESchema Schematic File Version 4
LIBS:Oak-cache
EELAYER 29 0
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
L Device:Antenna AE1
U 1 1 5DC68462
P 7900 1250
F 0 "AE1" H 7980 1239 50  0000 L CNN
F 1 "Stub Antenna 915MHz" H 7980 1148 50  0000 L CNN
F 2 "" H 7900 1250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/605456.pdf" H 7900 1250 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "LPRS" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "ANT-SS900" H 0   0   50  0001 C CNN "Part No."
F 7 "Element14" H 0   0   50  0001 C CNN "Vendor"
F 8 "https://sg.element14.com/lprs/ant-ss900/antenna-stub-straight-868-915mhz/dp/2096218" H 0   0   50  0001 C CNN "Vendor link"
F 9 "8.90" H 0   0   50  0001 C CNN "Unit cost"
	1    7900 1250
	1    0    0    -1  
$EndComp
$Comp
L RF_AM_FM:RFM95W-915S2 U1
U 1 1 5DC6932D
P 7150 1900
F 0 "U1" H 6800 2350 50  0000 C CNN
F 1 "LoRaWAN 915MHz" H 7650 1300 50  0000 C CNN
F 2 "" H 3850 3550 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 3850 3550 50  0001 C CNN
F 4 "Electronics" H 0   0   50  0001 C CNN "Category"
F 5 "HOPERF" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "RFM95W-915S2" H 0   0   50  0001 C CNN "Part No."
F 7 "Element14" H 0   0   50  0001 C CNN "Vendor"
F 8 "https://sg.element14.com/hoperf/rfm95w-915s2/rf-transceiver-module-915mhz-13dbm/dp/2759295" H 0   0   50  0001 C CNN "Vendor link"
F 9 "25.64" H 0   0   50  0001 C CNN "Unit cost"
	1    7150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1600 7900 1600
Wire Wire Line
	7900 1600 7900 1450
$Comp
L power:GND #PWR0101
U 1 1 5DC72BA0
P 7150 2850
F 0 "#PWR0101" H 7150 2600 50  0001 C CNN
F 1 "GND" H 7155 2677 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2500 7050 2650
Wire Wire Line
	7050 2650 7150 2650
Wire Wire Line
	7250 2650 7250 2500
Wire Wire Line
	7150 2500 7150 2650
Connection ~ 7150 2650
Wire Wire Line
	7150 2650 7250 2650
Wire Wire Line
	7150 2650 7150 2750
$Comp
L power:+3V3 #PWR0102
U 1 1 5DC74434
P 7150 1250
F 0 "#PWR0102" H 7150 1100 50  0001 C CNN
F 1 "+3V3" H 7165 1423 50  0000 C CNN
F 2 "" H 7150 1250 50  0001 C CNN
F 3 "" H 7150 1250 50  0001 C CNN
	1    7150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1250 7150 1350
NoConn ~ 6650 1600
NoConn ~ 6650 1700
NoConn ~ 6650 1800
NoConn ~ 6650 1900
NoConn ~ 6650 2100
NoConn ~ 7650 1800
NoConn ~ 7650 1900
NoConn ~ 7650 2000
NoConn ~ 7650 2100
NoConn ~ 7650 2200
NoConn ~ 7650 2300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DC75B39
P 7150 1350
F 0 "#FLG0101" H 7150 1425 50  0001 C CNN
F 1 "PWR_FLAG" V 7150 1478 50  0000 L CNN
F 2 "" H 7150 1350 50  0001 C CNN
F 3 "~" H 7150 1350 50  0001 C CNN
	1    7150 1350
	0    1    1    0   
$EndComp
Connection ~ 7150 1350
Wire Wire Line
	7150 1350 7150 1400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DC76F1A
P 7150 2750
F 0 "#FLG0102" H 7150 2825 50  0001 C CNN
F 1 "PWR_FLAG" V 7150 2878 50  0000 L CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "~" H 7150 2750 50  0001 C CNN
	1    7150 2750
	0    1    1    0   
$EndComp
Connection ~ 7150 2750
Wire Wire Line
	7150 2850 7150 2750
$EndSCHEMATC
