EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
LIBS:Belimawr
LIBS:WiFiLamp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NPN_BCE Q1
U 1 1 58A9B4A1
P 6350 3300
F 0 "Q1" H 6650 3350 50  0000 R CNN
F 1 "2N2222" H 6950 3250 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 6550 3400 50  0001 C CNN
F 3 "" H 6350 3300 50  0000 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q2
U 1 1 58A9B712
P 8200 3300
F 0 "Q2" H 8500 3350 50  0000 R CNN
F 1 "2N2222" H 8800 3250 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 8400 3400 50  0001 C CNN
F 3 "" H 8200 3300 50  0000 C CNN
	1    8200 3300
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58A9B820
P 6000 3300
F 0 "R1" V 6080 3300 50  0000 C CNN
F 1 "470R" V 6000 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 3300 50  0001 C CNN
F 3 "" H 6000 3300 50  0000 C CNN
	1    6000 3300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 58A9B89C
P 8550 3300
F 0 "R5" V 8630 3300 50  0000 C CNN
F 1 "470R" V 8550 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8480 3300 50  0001 C CNN
F 3 "" H 8550 3300 50  0000 C CNN
	1    8550 3300
	0    -1   1    0   
$EndComp
$Comp
L ESP-01v090 U1
U 1 1 58A9BED7
P 7600 4350
F 0 "U1" H 7250 4650 50  0000 C CNN
F 1 "ESP-01v090" H 7250 4050 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 7250 3950 50  0001 C CNN
F 3 "" H 7650 4350 50  0001 C CNN
	1    7600 4350
	1    0    0    -1  
$EndComp
$Comp
L TQ2-L2-5V H1
U 1 1 58A9C79E
P 7250 2500
F 0 "H1" H 7300 2100 60  0000 C CNN
F 1 "TQ2-L2-5V" H 7300 2800 60  0000 C CNN
F 2 "Belimawr:ATQ229" H 7250 2500 60  0001 C CNN
F 3 "" H 7250 2500 60  0001 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 58A9C8C9
P 8100 2550
F 0 "D2" H 8100 2650 50  0000 C CNN
F 1 "1N4007" H 8100 2750 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P10.16mm_Horizontal" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0000 C CNN
	1    8100 2550
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 58A9C966
P 6450 2550
F 0 "D1" H 6450 2350 50  0000 C CNN
F 1 "1N4007" H 6450 2450 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P10.16mm_Horizontal" H 6450 2550 50  0001 C CNN
F 3 "" H 6450 2550 50  0000 C CNN
	1    6450 2550
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 58A9CFC6
P 8100 2200
F 0 "#PWR01" H 8100 2050 50  0001 C CNN
F 1 "+5V" H 8100 2340 50  0000 C CNN
F 2 "" H 8100 2200 50  0000 C CNN
F 3 "" H 8100 2200 50  0000 C CNN
	1    8100 2200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58A9D04D
P 6450 2200
F 0 "#PWR02" H 6450 2050 50  0001 C CNN
F 1 "+5V" H 6450 2340 50  0000 C CNN
F 2 "" H 6450 2200 50  0000 C CNN
F 3 "" H 6450 2200 50  0000 C CNN
	1    6450 2200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58A9D4E7
P 6100 4250
F 0 "R2" V 6180 4250 50  0000 C CNN
F 1 "4K7" V 6100 4250 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 4250 50  0001 C CNN
F 3 "" H 6100 4250 50  0000 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58A9D676
P 6300 4150
F 0 "R3" V 6380 4150 50  0000 C CNN
F 1 "4K7" V 6300 4150 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 4150 50  0001 C CNN
F 3 "" H 6300 4150 50  0000 C CNN
	1    6300 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 58A9D712
P 6200 3900
F 0 "#PWR03" H 6200 3750 50  0001 C CNN
F 1 "+5V" H 6200 4040 50  0000 C CNN
F 2 "" H 6200 3900 50  0000 C CNN
F 3 "" H 6200 3900 50  0000 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58A9DAD9
P 8100 4100
F 0 "R4" V 8180 4100 50  0000 C CNN
F 1 "4K7" V 8100 4100 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 4100 50  0001 C CNN
F 3 "" H 8100 4100 50  0000 C CNN
	1    8100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2700 6450 3100
Wire Wire Line
	6450 2750 6850 2750
Wire Wire Line
	6450 2200 6450 2400
Wire Wire Line
	6450 2350 6850 2350
Wire Wire Line
	7700 2750 8100 2750
Wire Wire Line
	8100 2700 8100 3100
Wire Wire Line
	7700 2350 8100 2350
Wire Wire Line
	8100 2200 8100 2400
Connection ~ 8100 2750
Wire Wire Line
	8100 3500 8100 3600
Connection ~ 8100 2350
Connection ~ 6450 2350
Connection ~ 6450 2750
Wire Wire Line
	6450 3500 6450 3600
Wire Wire Line
	8700 3300 8800 3300
Wire Wire Line
	8800 3300 8800 4300
Wire Wire Line
	8800 4300 7850 4300
Wire Wire Line
	5850 3300 5800 3300
Wire Wire Line
	5800 3300 5800 4800
Wire Wire Line
	5800 4800 7950 4800
Wire Wire Line
	7950 4800 7950 4400
Wire Wire Line
	7850 4400 8100 4400
Wire Wire Line
	6100 4400 6650 4400
Wire Wire Line
	6650 4300 6300 4300
Wire Wire Line
	6100 3950 6100 4100
Wire Wire Line
	6000 4500 6650 4500
Wire Wire Line
	6000 3950 6000 4500
Wire Wire Line
	8100 4400 8100 4250
Connection ~ 7950 4400
Wire Wire Line
	6000 3950 8100 3950
Connection ~ 6200 3950
Wire Wire Line
	6300 4000 6300 3950
Connection ~ 6300 3950
Wire Wire Line
	6200 3950 6200 3900
Connection ~ 6100 3950
$Comp
L GND #PWR04
U 1 1 58A9EC53
P 8300 4550
F 0 "#PWR04" H 8300 4300 50  0001 C CNN
F 1 "GND" H 8300 4400 50  0000 C CNN
F 2 "" H 8300 4550 50  0000 C CNN
F 3 "" H 8300 4550 50  0000 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4550 8300 4200
Wire Wire Line
	8300 4200 7850 4200
$Comp
L GND #PWR05
U 1 1 58A9FC02
P 6450 3600
F 0 "#PWR05" H 6450 3350 50  0001 C CNN
F 1 "GND" H 6450 3450 50  0000 C CNN
F 2 "" H 6450 3600 50  0000 C CNN
F 3 "" H 6450 3600 50  0000 C CNN
	1    6450 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58A9FC61
P 8100 3600
F 0 "#PWR06" H 8100 3350 50  0001 C CNN
F 1 "GND" H 8100 3450 50  0000 C CNN
F 2 "" H 8100 3600 50  0000 C CNN
F 3 "" H 8100 3600 50  0000 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 58AA066B
P 7900 2550
F 0 "P2" H 7900 2750 50  0000 C CNN
F 1 "CN1" V 8000 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7900 2550 50  0001 C CNN
F 3 "" H 7900 2550 50  0000 C CNN
	1    7900 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 58AA080E
P 6650 2550
F 0 "P1" H 6650 2350 50  0000 C CNN
F 1 "CN2" V 6750 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6650 2550 50  0001 C CNN
F 3 "" H 6650 2550 50  0000 C CNN
	1    6650 2550
	-1   0    0    1   
$EndComp
NoConn ~ 6650 4200
NoConn ~ 7850 4500
$Comp
L +5V #PWR07
U 1 1 58AA1216
P 9200 4050
F 0 "#PWR07" H 9200 3900 50  0001 C CNN
F 1 "+5V" H 9200 4190 50  0000 C CNN
F 2 "" H 9200 4050 50  0000 C CNN
F 3 "" H 9200 4050 50  0000 C CNN
	1    9200 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58AA1254
P 9200 4650
F 0 "#PWR08" H 9200 4400 50  0001 C CNN
F 1 "GND" H 9200 4500 50  0000 C CNN
F 2 "" H 9200 4650 50  0000 C CNN
F 3 "" H 9200 4650 50  0000 C CNN
	1    9200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4550 9200 4650
Wire Wire Line
	9200 4050 9200 4150
NoConn ~ 9200 4250
NoConn ~ 9200 4350
NoConn ~ 9200 4450
$Comp
L CONN_01X05 P3
U 1 1 58AA227B
P 9400 4350
F 0 "P3" H 9400 4650 50  0000 C CNN
F 1 "CONN_01X05" V 9500 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 9400 4350 50  0001 C CNN
F 3 "" H 9400 4350 50  0000 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
