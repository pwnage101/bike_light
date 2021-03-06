EESchema Schematic File Version 2
LIBS:mic2282
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
LIBS:mc33063ap
LIBS:bike_light_circuit-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
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
L D_Schottky D?
U 1 1 59629AAF
P 1150 1350
F 0 "D?" H 1150 1450 50  0000 C CNN
F 1 "Schottky" H 1150 1250 50  0000 C CNN
F 2 "" H 1150 1350 50  0000 C CNN
F 3 "" H 1150 1350 50  0000 C CNN
	1    1150 1350
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 59629B88
P 700 1350
F 0 "#PWR?" H 700 1200 50  0001 C CNN
F 1 "VCC" H 700 1500 50  0000 C CNN
F 2 "" H 700 1350 50  0000 C CNN
F 3 "" H 700 1350 50  0000 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C?
U 1 1 59629BE3
P 1800 1600
F 0 "C?" H 1810 1670 50  0000 L CNN
F 1 "100u" H 1810 1520 50  0000 L CNN
F 2 "" H 1800 1600 50  0000 C CNN
F 3 "" H 1800 1600 50  0000 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L MC33063AP U1
U 1 1 596375CB
P 3350 1500
F 0 "U1" H 3350 1350 60  0000 C CNN
F 1 "MC33063AP" H 3350 2100 60  0000 C CNN
F 2 "" H 3350 1500 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mc33063a.pdf" H 3350 1500 60  0001 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59639FB3
P 2750 2100
F 0 "R2" V 2830 2100 50  0000 C CNN
F 1 "7.5k" V 2750 2100 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 2680 2100 50  0001 C CNN
F 3 "" H 2750 2100 50  0000 C CNN
	1    2750 2100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 59639FE4
P 2350 2350
F 0 "R1" V 2430 2350 50  0000 C CNN
F 1 "2.5k" V 2350 2350 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 2280 2350 50  0001 C CNN
F 3 "" H 2350 2350 50  0000 C CNN
	1    2350 2350
	1    0    0    -1  
$EndComp
$Comp
L R Rsc
U 1 1 5963A4CC
P 2200 1200
F 0 "Rsc" V 2280 1200 50  0000 C CNN
F 1 "0.33" V 2200 1200 50  0000 C CNN
F 2 "" V 2130 1200 50  0000 C CNN
F 3 "" H 2200 1200 50  0000 C CNN
	1    2200 1200
	-1   0    0    1   
$EndComp
$Comp
L D_Zener D?
U 1 1 5963A5D7
P 1550 1550
F 0 "D?" H 1550 1650 50  0000 C CNN
F 1 "7V Zener" H 1550 1450 50  0000 C CNN
F 2 "" H 1550 1550 50  0000 C CNN
F 3 "" H 1550 1550 50  0000 C CNN
	1    1550 1550
	0    1    1    0   
$EndComp
$Comp
L D_Zener D?
U 1 1 5963A652
P 1550 1950
F 0 "D?" H 1550 2050 50  0000 C CNN
F 1 "7V Zener" H 1550 1850 50  0000 C CNN
F 2 "" H 1550 1950 50  0000 C CNN
F 3 "" H 1550 1950 50  0000 C CNN
	1    1550 1950
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59640235
P 4900 1550
F 0 "D?" H 4900 1650 50  0000 C CNN
F 1 "Schottky" H 4900 1450 50  0000 C CNN
F 2 "" H 4900 1550 50  0000 C CNN
F 3 "" H 4900 1550 50  0000 C CNN
	1    4900 1550
	0    1    1    0   
$EndComp
$Comp
L L_Core_Iron L?
U 1 1 5964032C
P 5250 1200
F 0 "L?" V 5200 1200 50  0000 C CNN
F 1 "100u" V 5360 1200 50  0000 C CNN
F 2 "" H 5250 1200 50  0000 C CNN
F 3 "" H 5250 1200 50  0000 C CNN
	1    5250 1200
	0    -1   -1   0   
$EndComp
$Comp
L CP1_Small C?
U 1 1 5964052C
P 5600 1550
F 0 "C?" H 5625 1650 50  0000 L CNN
F 1 "470u" H 5625 1450 50  0000 L CNN
F 2 "" H 5600 1550 50  0000 C CNN
F 3 "" H 5600 1550 50  0000 C CNN
	1    5600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 4900 1200
Wire Wire Line
	4900 1200 5100 1200
Wire Wire Line
	4900 1200 4900 1400
Connection ~ 4900 1200
Wire Wire Line
	5400 1200 5600 1200
Wire Wire Line
	5600 1200 5950 1200
Wire Wire Line
	5950 1200 6100 1200
Wire Wire Line
	6100 1200 6400 1200
Wire Wire Line
	6400 1200 6800 1200
Wire Wire Line
	6800 1200 6900 1200
Wire Wire Line
	5600 1200 5600 1450
Wire Wire Line
	5950 1200 5950 2100
Wire Wire Line
	5950 2100 2900 2100
Connection ~ 5600 1200
Wire Wire Line
	2600 2100 2350 2100
Wire Wire Line
	2350 1500 2350 2100
Wire Wire Line
	2350 2100 2350 2200
Wire Wire Line
	2350 1500 2450 1500
Connection ~ 2350 2100
Wire Wire Line
	1300 1350 1550 1350
Wire Wire Line
	1550 1350 1800 1350
Wire Wire Line
	1800 1350 2200 1350
Wire Wire Line
	2200 1350 2450 1350
Wire Wire Line
	1800 1350 1800 1500
Connection ~ 2200 1350
Connection ~ 1800 1350
Wire Wire Line
	1550 1400 1550 1350
Connection ~ 1550 1350
Wire Wire Line
	1550 1700 1550 1800
Wire Wire Line
	700  1350 1000 1350
Wire Wire Line
	2350 1200 2450 1200
Wire Wire Line
	2200 1050 2350 1050
Wire Wire Line
	2350 1050 2450 1050
Connection ~ 2350 1050
Wire Wire Line
	2350 800  2350 1050
Wire Wire Line
	2350 1050 2350 1200
Wire Wire Line
	2350 800  4250 800 
Wire Wire Line
	4250 800  4250 1050
$Comp
L CP1_Small C?
U 1 1 59642EC6
P 4450 1500
F 0 "C?" H 4475 1600 50  0000 L CNN
F 1 "1.5n" H 4475 1400 50  0000 L CNN
F 2 "" H 4450 1500 50  0000 C CNN
F 3 "" H 4450 1500 50  0000 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1350 4250 1350
Wire Wire Line
	5600 1850 5600 1650
Wire Wire Line
	4250 1850 4450 1850
Wire Wire Line
	4450 1850 4900 1850
Wire Wire Line
	4900 1850 5600 1850
Wire Wire Line
	4900 1850 4900 1700
Wire Wire Line
	4450 1600 4450 1850
Connection ~ 4900 1850
Wire Wire Line
	4250 1850 4250 1500
Connection ~ 4450 1850
Wire Wire Line
	1550 2500 1800 2500
Wire Wire Line
	1800 2500 2350 2500
Wire Wire Line
	1550 2500 1550 2100
Wire Wire Line
	1800 1700 1800 2500
Connection ~ 1800 2500
$Comp
L CP1 C?
U 1 1 59646DB2
P 6400 1500
F 0 "C?" H 6425 1600 50  0000 L CNN
F 1 "1" H 6425 1400 50  0000 L CNN
F 2 "" H 6400 1500 50  0000 C CNN
F 3 "" H 6400 1500 50  0000 C CNN
F 4 "5.5V" H 6300 1500 60  0000 R CNN "Voltage"
	1    6400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1650 6400 1850
Wire Wire Line
	6400 1200 6400 1350
Connection ~ 5950 1200
Connection ~ 6400 1200
$Comp
L LED D?
U 1 1 59648360
P 8700 1400
F 0 "D?" H 8700 1500 50  0000 C CNN
F 1 "LED" H 8700 1300 50  0000 C CNN
F 2 "" H 8700 1400 50  0000 C CNN
F 3 "" H 8700 1400 50  0000 C CNN
	1    8700 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 596483CA
P 8700 2050
F 0 "R3" V 8780 2050 50  0000 C CNN
F 1 "_" V 8700 2050 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 8630 2050 50  0001 C CNN
F 3 "" H 8700 2050 50  0000 C CNN
	1    8700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1550 8700 1600
Wire Wire Line
	8700 1600 8700 1900
Wire Wire Line
	4450 1400 4450 1350
$Comp
L MIC2282 U2
U 1 1 597A5195
P 7400 1650
F 0 "U2" H 7400 1500 60  0000 C CNN
F 1 "MIC2282" H 7400 2250 60  0000 C CNN
F 2 "" H 7400 1650 60  0001 C CNN
F 3 "" H 7400 1650 60  0001 C CNN
	1    7400 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 597A7B17
P 4900 1850
F 0 "#PWR?" H 4900 1600 50  0001 C CNN
F 1 "GND" H 4900 1700 50  0000 C CNN
F 2 "" H 4900 1850 50  0000 C CNN
F 3 "" H 4900 1850 50  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 597A7B4B
P 1800 2500
F 0 "#PWR?" H 1800 2250 50  0001 C CNN
F 1 "GND" H 1800 2350 50  0000 C CNN
F 2 "" H 1800 2500 50  0000 C CNN
F 3 "" H 1800 2500 50  0000 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 597A891F
P 8500 2550
F 0 "#PWR?" H 8500 2300 50  0001 C CNN
F 1 "GND" H 8500 2400 50  0000 C CNN
F 2 "" H 8500 2550 50  0000 C CNN
F 3 "" H 8500 2550 50  0000 C CNN
	1    8500 2550
	1    0    0    -1  
$EndComp
$Comp
L L_Core_Iron L?
U 1 1 59814F1E
P 7400 850
F 0 "L?" V 7350 850 50  0000 C CNN
F 1 "100u" V 7510 850 50  0000 C CNN
F 2 "" H 7400 850 50  0000 C CNN
F 3 "" H 7400 850 50  0000 C CNN
	1    7400 850 
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 598152B9
P 8300 1200
F 0 "D?" H 8300 1300 50  0000 C CNN
F 1 "Schottky" H 8300 1100 50  0000 C CNN
F 2 "" H 8300 1200 50  0000 C CNN
F 3 "" H 8300 1200 50  0000 C CNN
	1    8300 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 59816067
P 8050 1350
F 0 "#PWR?" H 8050 1100 50  0001 C CNN
F 1 "GND" H 8050 1200 50  0000 C CNN
F 2 "" H 8050 1350 50  0000 C CNN
F 3 "" H 8050 1350 50  0000 C CNN
	1    8050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1350 7900 1350
Wire Wire Line
	7900 1200 8000 1200
Wire Wire Line
	8000 1200 8150 1200
Wire Wire Line
	8450 1200 8700 1200
Wire Wire Line
	8700 1200 8700 1250
$Comp
L R R4
U 1 1 598162BF
P 8300 1800
F 0 "R4" V 8380 1800 50  0000 C CNN
F 1 "_" V 8300 1800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 8230 1800 50  0001 C CNN
F 3 "" H 8300 1800 50  0000 C CNN
	1    8300 1800
	1    0    0    -1  
$EndComp
Text Notes 8800 1900 0    60   ~ 0
white LED:  R3 = 4.3 & R4 = 500m\nyellow LED: R3 = 4.3 & R4 = 700m\nred LED:    R3 = 4.3 & R4 = 700m
$Comp
L 2SC1945 Q?
U 1 1 59826413
P 8200 2250
F 0 "Q?" H 8400 2325 50  0000 L CNN
F 1 "2SC1945" H 8400 2250 50  0001 L CNN
F 2 "TO-220" H 8400 2175 50  0001 L CIN
F 3 "" H 8200 2250 50  0000 L CNN
	1    8200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2550 8700 2200
Wire Wire Line
	8300 2550 8500 2550
Wire Wire Line
	8500 2550 8700 2550
Wire Wire Line
	8300 2550 8300 2450
Connection ~ 8500 2550
Wire Wire Line
	8300 2050 8300 1950
Wire Wire Line
	8300 1650 8300 1600
Wire Wire Line
	8000 1600 8300 1600
Wire Wire Line
	8300 1600 8700 1600
Connection ~ 8700 1600
$Comp
L D_Zener D?
U 1 1 5982721E
P 7650 2250
F 0 "D?" H 7650 2350 50  0000 C CNN
F 1 "3V Zener" H 7650 2150 50  0000 C CNN
F 2 "" H 7650 2250 50  0000 C CNN
F 3 "" H 7650 2250 50  0000 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2250 8000 2250
Wire Wire Line
	7500 2250 7250 2250
Wire Wire Line
	6950 2250 6100 2250
$Comp
L GND #PWR?
U 1 1 59828BBC
P 6550 1850
F 0 "#PWR?" H 6550 1600 50  0001 C CNN
F 1 "GND" H 6550 1700 50  0000 C CNN
F 2 "" H 6550 1850 50  0000 C CNN
F 3 "" H 6550 1850 50  0000 C CNN
	1    6550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1350 6900 1350
Wire Wire Line
	6800 1200 6800 850 
Wire Wire Line
	6800 850  7250 850 
Connection ~ 6800 1200
Wire Wire Line
	7550 850  8000 850 
Wire Wire Line
	8000 850  8000 1200
Connection ~ 8000 1200
Wire Wire Line
	6700 1850 6700 1350
Wire Wire Line
	6400 1850 6550 1850
Wire Wire Line
	6550 1850 6700 1850
Connection ~ 6550 1850
Wire Wire Line
	8000 1600 8000 1950
Wire Wire Line
	8000 1950 6800 1950
Wire Wire Line
	6800 1950 6800 1500
Wire Wire Line
	6800 1500 6900 1500
Connection ~ 8300 1600
Wire Wire Line
	6100 2250 6100 1200
Connection ~ 6100 1200
Text Notes 5700 1100 0    60   ~ 0
regulated to 5.0V
$Comp
L R R5
U 1 1 59839E11
P 7100 2250
F 0 "R5" V 7180 2250 50  0000 C CNN
F 1 "360" V 7100 2250 50  0000 C CNN
F 2 "" V 7030 2250 50  0000 C CNN
F 3 "" H 7100 2250 50  0000 C CNN
	1    7100 2250
	0    1    1    0   
$EndComp
Text Notes 7750 800  0    60   ~ 0
Boost converter
Text Notes 4400 1100 0    60   ~ 0
Buck converter
$EndSCHEMATC
