EESchema Schematic File Version 4
LIBS:preamp-cache
EELAYER 26 0
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
L power:VCC #PWR05
U 1 1 5B943B22
P 3000 4300
F 0 "#PWR05" H 3000 4150 50  0001 C CNN
F 1 "VCC" H 3017 4473 50  0000 C CNN
F 2 "" H 3000 4300 50  0001 C CNN
F 3 "" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5B943B83
P 3000 5550
F 0 "#PWR06" H 3000 5300 50  0001 C CNN
F 1 "GND" H 3005 5377 50  0000 C CNN
F 2 "" H 3000 5550 50  0001 C CNN
F 3 "" H 3000 5550 50  0001 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL062 U1
U 1 1 5B943C9F
P 3900 5000
F 0 "U1" H 3900 5367 50  0000 C CNN
F 1 "TL062" H 3900 5276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3900 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 3900 5000 50  0001 C CNN
	1    3900 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5B943D50
P 3000 4650
F 0 "R3" H 3070 4696 50  0000 L CNN
F 1 "100k" H 3070 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 4650 50  0001 C CNN
F 3 "~" H 3000 4650 50  0001 C CNN
	1    3000 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5B943D6E
P 3000 5100
F 0 "R4" H 3070 5146 50  0000 L CNN
F 1 "100k" H 3070 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 5100 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5250 3000 5400
Wire Wire Line
	3000 4500 3000 4450
Wire Wire Line
	3000 4800 3000 4900
Wire Wire Line
	3600 4900 3250 4900
Connection ~ 3000 4900
Wire Wire Line
	3000 4900 3000 4950
Wire Wire Line
	3600 5100 3500 5100
Wire Wire Line
	3500 5100 3500 5400
Wire Wire Line
	3500 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5000
Wire Wire Line
	4250 5000 4200 5000
$Comp
L Device:C C1
U 1 1 5B943EC0
P 5050 5150
F 0 "C1" H 5165 5196 50  0000 L CNN
F 1 "0.1uF" H 5165 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5088 5000 50  0001 C CNN
F 3 "~" H 5050 5150 50  0001 C CNN
	1    5050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5B943EE8
P 3250 5150
F 0 "C3" H 3365 5196 50  0000 L CNN
F 1 "0.1uF" H 3365 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 5000 50  0001 C CNN
F 3 "~" H 3250 5150 50  0001 C CNN
	1    3250 5150
	1    0    0    -1  
$EndComp
Connection ~ 3000 5400
Wire Wire Line
	3250 5000 3250 4900
Connection ~ 3250 4900
Wire Wire Line
	3250 4900 3000 4900
Wire Wire Line
	3250 5300 3250 5400
Wire Wire Line
	3250 5400 3000 5400
Text Notes 3350 4400 0    50   ~ 0
Virtual ground from single-sided power supply
Text GLabel 4350 5000 2    50   BiDi ~ 0
VGND
Wire Wire Line
	4350 5000 4250 5000
Connection ~ 4250 5000
Text GLabel 8000 1900 0    50   Input ~ 0
VGND
$Comp
L Amplifier_Operational:TL062 U2
U 1 1 5B945A0D
P 7050 1600
F 0 "U2" H 7050 1967 50  0000 C CNN
F 1 "TL062" H 7050 1876 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 7050 1600 50  0001 C CNN
	1    7050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5B945AA1
P 7650 2100
F 0 "R8" V 7443 2100 50  0000 C CNN
F 1 "100k" V 7534 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7580 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2100 7950 2100
$Comp
L Device:R R9
U 1 1 5B945E77
P 8300 2450
F 0 "R9" V 8093 2450 50  0000 C CNN
F 1 "100k" V 8184 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8230 2450 50  0001 C CNN
F 3 "~" H 8300 2450 50  0001 C CNN
	1    8300 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2450 7950 2450
Wire Wire Line
	7950 2450 7950 2100
Connection ~ 7950 2100
Wire Wire Line
	7950 2100 8050 2100
Wire Wire Line
	8450 2450 8800 2450
Wire Wire Line
	8800 2450 8800 2000
Wire Wire Line
	8800 2000 8650 2000
$Comp
L Device:R R11
U 1 1 5B946373
P 9050 2000
F 0 "R11" V 8843 2000 50  0000 C CNN
F 1 "100" V 8934 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 2000 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5B9463C3
P 9050 1600
F 0 "R10" V 8843 1600 50  0000 C CNN
F 1 "100" V 8934 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 1600 50  0001 C CNN
F 3 "~" H 9050 1600 50  0001 C CNN
	1    9050 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2000 8800 2000
Connection ~ 8800 2000
Wire Wire Line
	8000 1900 8050 1900
Text GLabel 6200 2450 0    50   Input ~ 0
VGND
$Comp
L Device:R R7
U 1 1 5B947038
P 6400 2000
F 0 "R7" H 6330 1954 50  0000 R CNN
F 1 "100k" H 6330 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 2000 50  0001 C CNN
F 3 "~" H 6400 2000 50  0001 C CNN
	1    6400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 1850 6400 1500
Wire Wire Line
	6400 1500 6750 1500
Wire Wire Line
	6400 2150 6400 2450
Wire Wire Line
	6400 2450 6200 2450
Wire Wire Line
	6750 1700 6650 1700
Wire Wire Line
	6650 1700 6650 1950
Wire Wire Line
	6650 1950 7450 1950
Wire Wire Line
	7450 1950 7450 1600
Wire Wire Line
	7450 1600 7350 1600
Wire Wire Line
	7450 1950 7450 2100
Wire Wire Line
	7450 2100 7500 2100
Connection ~ 7450 1950
Wire Wire Line
	7450 1600 8900 1600
Connection ~ 7450 1600
Text Notes 6550 1100 0    118  ~ 0
Balanced line driver
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5B94AD36
P 9950 1600
F 0 "J5" H 10030 1642 50  0000 L CNN
F 1 "Conn_01x01" H 10030 1551 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 9950 1600 50  0001 C CNN
F 3 "~" H 9950 1600 50  0001 C CNN
	1    9950 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5B94B3F9
P 9950 2000
F 0 "J6" H 10030 2042 50  0000 L CNN
F 1 "Conn_01x01" H 10030 1951 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 9950 2000 50  0001 C CNN
F 3 "~" H 9950 2000 50  0001 C CNN
	1    9950 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5B94BAF5
P 9950 2400
F 0 "J7" H 10030 2442 50  0000 L CNN
F 1 "Conn_01x01" H 10030 2351 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 9950 2400 50  0001 C CNN
F 3 "~" H 9950 2400 50  0001 C CNN
	1    9950 2400
	1    0    0    -1  
$EndComp
Text GLabel 9500 2400 0    50   Input ~ 0
VGND
Wire Wire Line
	9500 2400 9750 2400
Text Label 9650 2000 0    50   ~ 0
OUT-
Text Label 9650 1600 0    50   ~ 0
OUT+
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5B94C3CA
P 1500 4450
F 0 "J3" H 1420 4225 50  0000 C CNN
F 1 "Conn_01x01" H 1420 4316 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1500 4450 50  0001 C CNN
F 3 "~" H 1500 4450 50  0001 C CNN
	1    1500 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5B94E4CC
P 1550 5400
F 0 "J4" H 1470 5175 50  0000 C CNN
F 1 "Conn_01x01" H 1470 5266 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1550 5400 50  0001 C CNN
F 3 "~" H 1550 5400 50  0001 C CNN
	1    1550 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4450 1900 4450
Wire Wire Line
	1750 5400 1900 5400
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5B95313E
P 1150 1400
F 0 "J1" H 1070 1175 50  0000 C CNN
F 1 "Conn_01x01" H 1070 1266 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1150 1400 50  0001 C CNN
F 3 "~" H 1150 1400 50  0001 C CNN
	1    1150 1400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5B95319A
P 1150 2150
F 0 "J2" H 1070 1925 50  0000 C CNN
F 1 "Conn_01x01" H 1070 2016 50  0000 C CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1150 2150 50  0001 C CNN
F 3 "~" H 1150 2150 50  0001 C CNN
	1    1150 2150
	-1   0    0    1   
$EndComp
Text GLabel 6150 1500 0    50   Input ~ 0
AMP
Wire Wire Line
	6150 1500 6400 1500
Connection ~ 6400 1500
Text GLabel 4450 1500 2    50   Output ~ 0
AMP
Text Label 1400 1400 0    50   ~ 0
IN+
Text Label 1400 2150 0    50   ~ 0
IN-
$Comp
L Device:R R1
U 1 1 5B9566C5
P 1750 1400
F 0 "R1" V 1543 1400 50  0000 C CNN
F 1 "10k" V 1634 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 1400 50  0001 C CNN
F 3 "~" H 1750 1400 50  0001 C CNN
	1    1750 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5B9567C6
P 3600 2000
F 0 "R6" V 3393 2000 50  0000 C CNN
F 1 "22k" V 3484 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5B956863
P 3600 2250
F 0 "C4" V 3852 2250 50  0000 C CNN
F 1 "220pF" V 3761 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3638 2100 50  0001 C CNN
F 3 "~" H 3600 2250 50  0001 C CNN
	1    3600 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5B95902D
P 4200 1500
F 0 "C5" V 4452 1500 50  0000 C CNN
F 1 "10uF" V 4361 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 1350 50  0001 C CNN
F 3 "~" H 4200 1500 50  0001 C CNN
	1    4200 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 1500 4450 1500
Wire Wire Line
	4050 1500 3950 1500
$Comp
L Device:R R2
U 1 1 5B95A6DE
P 2000 1750
F 0 "R2" H 1930 1704 50  0000 R CNN
F 1 "10M" H 1930 1795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 1750 50  0001 C CNN
F 3 "~" H 2000 1750 50  0001 C CNN
	1    2000 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 1600 2000 1400
Wire Wire Line
	1350 1400 1600 1400
Wire Wire Line
	1900 1400 2000 1400
Text GLabel 1800 2900 0    50   Input ~ 0
VGND
Text GLabel 2900 3100 0    50   Input ~ 0
VGND
$Comp
L Device:R R5
U 1 1 5B962C4D
P 3200 2500
F 0 "R5" H 3130 2454 50  0000 R CNN
F 1 "2k" H 3130 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 2500 50  0001 C CNN
F 3 "~" H 3200 2500 50  0001 C CNN
	1    3200 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5B962CA7
P 3200 2850
F 0 "C2" H 3315 2896 50  0000 L CNN
F 1 "10uF" H 3315 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 2700 50  0001 C CNN
F 3 "~" H 3200 2850 50  0001 C CNN
	1    3200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2250 3950 2250
Wire Wire Line
	3950 2250 3950 2000
Connection ~ 3950 1500
Wire Wire Line
	3950 1500 3900 1500
Wire Wire Line
	3750 2000 3950 2000
Connection ~ 3950 2000
Wire Wire Line
	3950 2000 3950 1500
Wire Wire Line
	3450 2000 3200 2000
Wire Wire Line
	3200 2000 3200 1600
Wire Wire Line
	3200 1600 3300 1600
Wire Wire Line
	3200 2000 3200 2250
Wire Wire Line
	3200 2250 3450 2250
Connection ~ 3200 2000
Wire Wire Line
	2000 1400 2350 1400
Connection ~ 2000 1400
Wire Wire Line
	3200 2350 3200 2250
Connection ~ 3200 2250
Wire Wire Line
	3200 2700 3200 2650
Wire Wire Line
	2900 3100 3200 3100
Wire Wire Line
	3200 3100 3200 3000
$Comp
L Device:D D1
U 1 1 5B994E95
P 2350 1750
F 0 "D1" V 2304 1829 50  0000 L CNN
F 1 "D" V 2395 1829 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2350 1750 50  0001 C CNN
F 3 "~" H 2350 1750 50  0001 C CNN
	1    2350 1750
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5B996852
P 2550 1750
F 0 "D4" V 2596 1671 50  0000 R CNN
F 1 "D" V 2505 1671 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 2550 1750 50  0001 C CNN
F 3 "~" H 2550 1750 50  0001 C CNN
	1    2550 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1600 2350 1400
Connection ~ 2350 1400
Wire Wire Line
	2350 1400 2550 1400
Wire Wire Line
	2550 1600 2550 1400
Connection ~ 2550 1400
Wire Wire Line
	2550 1400 3300 1400
Wire Wire Line
	2550 1900 2550 2000
Wire Wire Line
	2550 2000 2350 2000
Wire Wire Line
	2350 2000 2350 1900
Wire Wire Line
	2550 2000 3200 2000
Connection ~ 2550 2000
$Comp
L Device:D_Zener D2
U 1 1 5B9A41D0
P 2350 2250
F 0 "D2" V 2304 2329 50  0000 L CNN
F 1 "3V1" V 2395 2329 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2350 2250 50  0001 C CNN
F 3 "~" H 2350 2250 50  0001 C CNN
	1    2350 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2100 2350 2000
Connection ~ 2350 2000
$Comp
L Device:D_Zener D3
U 1 1 5B9AA27A
P 2350 2600
F 0 "D3" V 2396 2521 50  0000 R CNN
F 1 "3V1" V 2305 2521 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 2350 2600 50  0001 C CNN
F 3 "~" H 2350 2600 50  0001 C CNN
	1    2350 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 2750 2350 2900
Wire Wire Line
	2350 2900 2000 2900
Wire Wire Line
	2000 1900 2000 2150
Wire Wire Line
	1800 2900 2000 2900
Connection ~ 2000 2900
Wire Wire Line
	1350 2150 2000 2150
Connection ~ 2000 2150
Wire Wire Line
	2000 2150 2000 2900
Wire Wire Line
	2350 2450 2350 2400
Text Notes 2000 950  0    118  ~ 0
High-Z preamp
Text Notes 4150 2750 0    50   ~ 0
Highpass, f=1/(2pi*RC)
Text Notes 1050 4050 0    118  ~ 0
Power supply
Text Notes 7350 2600 0    50   ~ 0
Resistor pair should be 0.1 or 1% tolerance
Text Notes 4150 2100 0    50   ~ 0
Lowpass, f=1/(2pi*RC)
Text Notes 800  1700 0    50   ~ 0
Piezo 25nF
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5B9F4813
P 2300 5300
F 0 "Q1" V 2550 5300 50  0000 C CNN
F 1 "BSS138L" V 2641 5300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2500 5400 50  0001 C CNN
F 3 "~" H 2300 5300 50  0001 C CNN
	1    2300 5300
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 5100 2300 4450
$Comp
L power:+BATT #PWR04
U 1 1 5B955664
P 1900 4300
F 0 "#PWR04" H 1900 4150 50  0001 C CNN
F 1 "+BATT" H 1915 4473 50  0000 C CNN
F 2 "" H 1900 4300 50  0001 C CNN
F 3 "" H 1900 4300 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR03
U 1 1 5B955741
P 1900 5550
F 0 "#PWR03" H 1900 5400 50  0001 C CNN
F 1 "-BATT" H 1915 5723 50  0000 C CNN
F 2 "" H 1900 5550 50  0001 C CNN
F 3 "" H 1900 5550 50  0001 C CNN
	1    1900 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 5550 3000 5400
Wire Wire Line
	2500 5400 3000 5400
Wire Wire Line
	2300 4450 3000 4450
Wire Wire Line
	3000 4300 3000 4450
Connection ~ 3000 4450
Connection ~ 2300 4450
Wire Wire Line
	1900 5550 1900 5400
Wire Wire Line
	1900 5400 2100 5400
Connection ~ 1900 5400
$Comp
L power:VCC #PWR01
U 1 1 5B980DB0
P 5050 4800
F 0 "#PWR01" H 5050 4650 50  0001 C CNN
F 1 "VCC" H 5067 4973 50  0000 C CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4800 5050 4850
$Comp
L power:GND #PWR02
U 1 1 5B985930
P 5050 5550
F 0 "#PWR02" H 5050 5300 50  0001 C CNN
F 1 "GND" H 5055 5377 50  0000 C CNN
F 2 "" H 5050 5550 50  0001 C CNN
F 3 "" H 5050 5550 50  0001 C CNN
	1    5050 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5B98A512
P 10450 3350
F 0 "C6" H 10565 3396 50  0000 L CNN
F 1 "0.1uF" H 10565 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10488 3200 50  0001 C CNN
F 3 "~" H 10450 3350 50  0001 C CNN
	1    10450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5B98A519
P 10450 3000
F 0 "#PWR07" H 10450 2850 50  0001 C CNN
F 1 "VCC" H 10467 3173 50  0000 C CNN
F 2 "" H 10450 3000 50  0001 C CNN
F 3 "" H 10450 3000 50  0001 C CNN
	1    10450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3000 10450 3050
$Comp
L power:GND #PWR08
U 1 1 5B98A520
P 10450 3750
F 0 "#PWR08" H 10450 3500 50  0001 C CNN
F 1 "GND" H 10455 3577 50  0000 C CNN
F 2 "" H 10450 3750 50  0001 C CNN
F 3 "" H 10450 3750 50  0001 C CNN
	1    10450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3750 10450 3650
$Comp
L Device:C C7
U 1 1 5B99C27E
P 9400 1600
F 0 "C7" V 9148 1600 50  0000 C CNN
F 1 "10uF" V 9239 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 1450 50  0001 C CNN
F 3 "~" H 9400 1600 50  0001 C CNN
	1    9400 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5B99C375
P 9400 2000
F 0 "C8" V 9148 2000 50  0000 C CNN
F 1 "10uF" V 9239 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 1850 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 2000 9200 2000
Wire Wire Line
	9250 1600 9200 1600
Wire Wire Line
	9550 1600 9750 1600
Wire Wire Line
	9550 2000 9750 2000
Text Notes 10200 1900 0    50   ~ 0
Line\n10k input impedance
$Comp
L Amplifier_Operational:TL062 U1
U 3 1 5B9A7111
P 5500 5150
F 0 "U1" H 5458 5196 50  0000 L CNN
F 1 "TL062" H 5458 5105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 5500 5150 50  0001 C CNN
	3    5500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5550 5050 5450
$Comp
L Amplifier_Operational:TL062 U2
U 3 1 5B9ACDD0
P 10800 3350
F 0 "U2" H 10758 3396 50  0000 L CNN
F 1 "TL062" H 10758 3305 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10800 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 10800 3350 50  0001 C CNN
	3    10800 3350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL062 U1
U 2 1 5B9ADCEB
P 3600 1500
F 0 "U1" H 3600 1867 50  0000 C CNN
F 1 "TL062" H 3600 1776 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3600 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 3600 1500 50  0001 C CNN
	2    3600 1500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL062 U2
U 2 1 5B9ADD87
P 8350 2000
F 0 "U2" H 8350 2367 50  0000 C CNN
F 1 "TL062" H 8350 2276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8350 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 8350 2000 50  0001 C CNN
	2    8350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5450 5050 5450
Connection ~ 5050 5450
Wire Wire Line
	5050 5450 5050 5300
Wire Wire Line
	5400 4850 5050 4850
Connection ~ 5050 4850
Wire Wire Line
	5050 4850 5050 5000
Wire Wire Line
	10700 3050 10450 3050
Connection ~ 10450 3050
Wire Wire Line
	10450 3050 10450 3200
Wire Wire Line
	10700 3650 10450 3650
Connection ~ 10450 3650
Wire Wire Line
	10450 3650 10450 3500
Text Notes 1250 4800 0    50   ~ 0
9-15V input
Wire Wire Line
	1900 4300 1900 4450
Connection ~ 1900 4450
Wire Wire Line
	1900 4450 1700 4450
Text Label 2850 2000 0    50   ~ 0
PRE-
Text Label 2850 1400 0    50   ~ 0
PRE+
$EndSCHEMATC
