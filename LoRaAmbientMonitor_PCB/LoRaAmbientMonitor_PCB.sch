EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LoRaAmbientMonitor"
Date "2022-06-02"
Rev "1.0"
Comp "Ronald Sieber"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R2
U 1 1 5FF33B29
P 1550 7450
F 0 "R2" V 1343 7450 50  0000 C CNN
F 1 "4k7" V 1434 7450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 7450 50  0001 C CNN
F 3 "~" H 1550 7450 50  0001 C CNN
	1    1550 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FF456B2
P 2750 3500
F 0 "#PWR0101" H 2750 3250 50  0001 C CNN
F 1 "GND" H 2755 3327 50  0000 C CNN
F 2 "" H 2750 3500 50  0001 C CNN
F 3 "" H 2750 3500 50  0001 C CNN
	1    2750 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FF4882D
P 2050 7050
F 0 "#PWR0103" H 2050 6800 50  0001 C CNN
F 1 "GND" H 2055 6877 50  0000 C CNN
F 2 "" H 2050 7050 50  0001 C CNN
F 3 "" H 2050 7050 50  0001 C CNN
	1    2050 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FF494EB
P 4950 5750
F 0 "#PWR0104" H 4950 5500 50  0001 C CNN
F 1 "GND" H 4955 5577 50  0000 C CNN
F 2 "" H 4950 5750 50  0001 C CNN
F 3 "" H 4950 5750 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FF2D294
P 2750 3200
F 0 "SW1" V 2704 3348 50  0000 L CNN
F 1 "SET" V 2795 3348 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 2750 3400 50  0001 C CNN
F 3 "~" H 2750 3400 50  0001 C CNN
	1    2750 3200
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FF5318E
P 2000 1200
F 0 "#FLG0101" H 2000 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 1373 50  0000 C CNN
F 2 "" H 2000 1200 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FF54C96
P 2750 2100
F 0 "#FLG0102" H 2750 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 2273 50  0000 C CNN
F 2 "" H 2750 2100 50  0001 C CNN
F 3 "~" H 2750 2100 50  0001 C CNN
	1    2750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6650 1500 6650
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FF367BE
P 1200 1350
F 0 "J1" H 1118 1567 50  0000 C CNN
F 1 "Vin 5V" H 1118 1476 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-2pol" H 1200 1350 50  0001 C CNN
F 3 "~" H 1200 1350 50  0001 C CNN
	1    1200 1350
	-1   0    0    -1  
$EndComp
Connection ~ 2000 1350
$Comp
L power:GND #PWR0116
U 1 1 5FF65D70
P 1500 1850
F 0 "#PWR0116" H 1500 1600 50  0001 C CNN
F 1 "GND" H 1505 1677 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2000 1200
Wire Wire Line
	2750 2250 2750 2100
Text Notes 650  1450 0    50   ~ 0
Power Ext.\n(5V / USB)
$Comp
L Device:D D1
U 1 1 5FF85EA5
P 1700 1350
F 0 "D1" H 1700 1566 50  0000 C CNN
F 1 "1N4001" H 1700 1475 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 1700 1350 50  0001 C CNN
F 3 "~" H 1700 1350 50  0001 C CNN
	1    1700 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 1350 1550 1350
Wire Wire Line
	1850 1350 2000 1350
$Comp
L Device:CP C1
U 1 1 5FF9AA3C
P 2000 1600
F 0 "C1" H 2118 1646 50  0000 L CNN
F 1 "100µF" H 2118 1555 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 2038 1450 50  0001 C CNN
F 3 "~" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1450 2000 1350
$Comp
L power:GND #PWR0117
U 1 1 5FFB1CBA
P 2000 1850
F 0 "#PWR0117" H 2000 1600 50  0001 C CNN
F 1 "GND" H 2005 1677 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1750 2000 1850
Wire Wire Line
	1400 1450 1500 1450
Wire Wire Line
	1500 1450 1500 1850
Wire Wire Line
	1850 6600 1850 7450
Wire Wire Line
	1750 6650 1750 6600
$Comp
L Device:CP C3
U 1 1 5FFAFFE1
P 1500 6800
F 0 "C3" H 1618 6846 50  0000 L CNN
F 1 "47µF" H 1618 6755 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 1538 6650 50  0001 C CNN
F 3 "~" H 1500 6800 50  0001 C CNN
	1    1500 6800
	1    0    0    -1  
$EndComp
Connection ~ 1500 6650
Wire Wire Line
	1500 6650 1250 6650
Wire Wire Line
	1500 6950 2050 6950
Wire Wire Line
	2050 6950 2050 6600
Wire Wire Line
	2050 7050 2050 6950
Connection ~ 2050 6950
Wire Wire Line
	1400 7450 1250 7450
Wire Wire Line
	1250 7450 1250 6650
Wire Wire Line
	1700 7450 1850 7450
$Comp
L Sensors:DHT22_Temperature_Humidity TH1
U 1 1 62088B54
P 1900 6600
F 0 "TH1" H 1800 7600 60  0000 L CNN
F 1 "DHT22" H 1750 7500 60  0000 L CNN
F 2 "Sensors:DHT22_Temperature_Humidity" H 1900 6600 60  0001 C CNN
F 3 "" H 1900 6600 60  0000 C CNN
	1    1900 6600
	1    0    0    -1  
$EndComp
$Comp
L HC-SR501:HC-SR501 U3
U 1 1 6209E78E
P 1850 4200
F 0 "U3" H 1850 4650 50  0000 C CNN
F 1 "HC-SR501" H 1850 4550 50  0000 C CNN
F 2 "HC-SR501:HC-SR501" H 1800 3850 50  0001 C CNN
F 3 "" H 1800 3850 50  0001 C CNN
	1    1850 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 620A5D1F
P 2500 5200
F 0 "#PWR0102" H 2500 4950 50  0001 C CNN
F 1 "GND" H 2505 5027 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FF6B51E
P 5100 5650
F 0 "#FLG0103" H 5100 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 5800 50  0000 C CNN
F 2 "" H 5100 5650 50  0001 C CNN
F 3 "~" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5550 4750 5650
Wire Wire Line
	4950 5650 4950 5550
Wire Wire Line
	5100 5650 4950 5650
Connection ~ 4950 5650
Wire Wire Line
	4750 5650 4950 5650
Wire Wire Line
	4950 5750 4950 5650
Wire Wire Line
	1250 6650 1250 2250
Connection ~ 1250 6650
Wire Wire Line
	3600 4900 3600 7450
$Comp
L power:GND #PWR0105
U 1 1 620C9DBB
P 7150 4750
F 0 "#PWR0105" H 7150 4500 50  0001 C CNN
F 1 "GND" H 7155 4577 50  0000 C CNN
F 2 "" H 7150 4750 50  0001 C CNN
F 3 "" H 7150 4750 50  0001 C CNN
	1    7150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 7400 5000
Wire Wire Line
	3800 4100 3600 4100
Wire Wire Line
	3600 4100 3600 2700
Wire Wire Line
	3600 2700 7400 2700
$Comp
L Device:R_Network04 RN1
U 1 1 620D01E5
P 6200 3300
F 0 "RN1" H 5800 3500 50  0000 L CNN
F 1 "SIL 5-4 4,7K" H 6100 3500 50  0000 L CNN
F 2 "Resistors_THT:R_Array_SIP5" V 6475 3300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6200 3300 50  0001 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x04 SW2
U 1 1 620D1721
P 6650 3800
F 0 "SW2" H 6650 4267 50  0000 C CNN
F 1 "CFG" H 6650 4176 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_DIP_x4_W7.62mm_Slide" H 6650 3800 50  0001 C CNN
F 3 "~" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4800 6800 4800
Wire Wire Line
	6800 4400 6950 4400
Wire Wire Line
	6350 4800 6500 4800
Wire Wire Line
	6350 4400 6500 4400
Wire Wire Line
	5900 4800 6050 4800
Wire Wire Line
	5900 4400 6050 4400
$Comp
L Device:LED D102
U 1 1 620C4961
P 6650 4800
F 0 "D102" H 6650 4700 50  0000 C CNN
F 1 "LED" H 6650 4600 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6650 4800 50  0001 C CNN
F 3 "~" H 6650 4800 50  0001 C CNN
	1    6650 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D101
U 1 1 620C2BD9
P 6650 4400
F 0 "D101" H 6650 4300 50  0000 C CNN
F 1 "LED" H 6650 4200 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6650 4400 50  0001 C CNN
F 3 "~" H 6650 4400 50  0001 C CNN
	1    6650 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R102
U 1 1 620C24B5
P 6200 4800
F 0 "R102" V 5993 4800 50  0000 C CNN
F 1 "470R" V 6084 4800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6130 4800 50  0001 C CNN
F 3 "~" H 6200 4800 50  0001 C CNN
	1    6200 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R101
U 1 1 620C0A6E
P 6200 4400
F 0 "R101" V 5993 4400 50  0000 C CNN
F 1 "470R" V 6084 4400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6130 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
	1    6200 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4400 6950 4600
Wire Wire Line
	7150 4750 7150 4600
Wire Wire Line
	7150 3600 6950 3600
Wire Wire Line
	6950 3700 7150 3700
Connection ~ 7150 3700
Wire Wire Line
	7150 3700 7150 3600
Wire Wire Line
	6950 3800 7150 3800
Connection ~ 7150 3800
Wire Wire Line
	7150 3800 7150 3700
Wire Wire Line
	6950 3900 7150 3900
Connection ~ 7150 3900
Wire Wire Line
	7150 3900 7150 3800
Wire Wire Line
	6950 4600 7150 4600
Connection ~ 6950 4600
Wire Wire Line
	6950 4600 6950 4800
Connection ~ 7150 4600
Wire Wire Line
	7150 4600 7150 3900
Wire Wire Line
	1250 2250 2750 2250
Wire Wire Line
	5900 3600 6000 3600
Wire Wire Line
	5900 3700 6100 3700
Wire Wire Line
	5900 3800 6200 3800
Wire Wire Line
	5900 3900 6300 3900
Wire Wire Line
	6300 3500 6300 3900
Connection ~ 6300 3900
Wire Wire Line
	6300 3900 6350 3900
Wire Wire Line
	6200 3500 6200 3800
Connection ~ 6200 3800
Wire Wire Line
	6200 3800 6350 3800
Wire Wire Line
	6100 3500 6100 3700
Connection ~ 6100 3700
Wire Wire Line
	6100 3700 6350 3700
Wire Wire Line
	6000 3500 6000 3600
Connection ~ 6000 3600
Wire Wire Line
	6000 3600 6350 3600
Wire Wire Line
	6000 3100 6000 2250
Wire Wire Line
	4250 2950 4250 2850
Wire Wire Line
	4250 2850 4400 2850
Wire Wire Line
	4400 2850 4400 2950
Wire Wire Line
	4250 2850 4250 2250
Wire Wire Line
	8200 3600 8100 3600
$Comp
L power:GND #PWR0106
U 1 1 620F7C3E
P 8100 4250
F 0 "#PWR0106" H 8100 4000 50  0001 C CNN
F 1 "GND" H 8105 4077 50  0000 C CNN
F 2 "" H 8100 4250 50  0001 C CNN
F 3 "" H 8100 4250 50  0001 C CNN
	1    8100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2700 7400 3700
Wire Wire Line
	7400 3800 7400 5000
Connection ~ 8100 4100
Wire Wire Line
	7400 3800 8200 3800
Wire Wire Line
	8200 3700 7400 3700
Wire Wire Line
	7750 3500 7750 4100
Wire Wire Line
	7750 4100 8100 4100
Wire Wire Line
	7750 3200 7750 2700
Wire Wire Line
	7750 2700 8100 2700
Wire Wire Line
	8100 2700 8100 3600
$Comp
L Device:R R5
U 1 1 621222B7
P 10000 3300
F 0 "R5" H 10070 3346 50  0000 L CNN
F 1 "100k" H 10070 3255 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9930 3300 50  0001 C CNN
F 3 "~" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3700 9200 3700
Wire Wire Line
	6000 2250 8100 2250
Connection ~ 6000 2250
Wire Wire Line
	10000 2250 10000 2350
Wire Wire Line
	9350 3700 9350 3050
$Comp
L power:GND #PWR0107
U 1 1 62132CE9
P 10000 3550
F 0 "#PWR0107" H 10000 3300 50  0001 C CNN
F 1 "GND" H 10005 3377 50  0000 C CNN
F 2 "" H 10000 3550 50  0001 C CNN
F 3 "" H 10000 3550 50  0001 C CNN
	1    10000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3450 10000 3550
Wire Wire Line
	4850 2950 4850 1350
Wire Wire Line
	8100 2700 8100 2250
Connection ~ 8100 2700
$Comp
L Device:R R3
U 1 1 620FB6D0
P 2750 4450
F 0 "R3" H 2820 4496 50  0000 L CNN
F 1 "2k7" H 2820 4405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2680 4450 50  0001 C CNN
F 3 "~" H 2750 4450 50  0001 C CNN
	1    2750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 620FC107
P 2750 2650
F 0 "R1" H 2820 2696 50  0000 L CNN
F 1 "4k7" H 2820 2605 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2680 2650 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 620FC85B
P 2750 4950
F 0 "R4" H 2820 4996 50  0000 L CNN
F 1 "4k7" H 2820 4905 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2680 4950 50  0001 C CNN
F 3 "~" H 2750 4950 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3400 2750 3500
Wire Wire Line
	2750 2500 2750 2250
Wire Wire Line
	2750 4200 2750 4300
$Comp
L power:GND #PWR0108
U 1 1 6211CE92
P 2750 5200
F 0 "#PWR0108" H 2750 4950 50  0001 C CNN
F 1 "GND" H 2755 5027 50  0000 C CNN
F 2 "" H 2750 5200 50  0001 C CNN
F 3 "" H 2750 5200 50  0001 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5100 2750 5200
Wire Wire Line
	2500 4300 2500 5200
Wire Wire Line
	2000 1350 2500 1350
Wire Wire Line
	2500 4100 2500 1350
$Comp
L power:+3.3V #PWR0109
U 1 1 6212831A
P 4250 2100
F 0 "#PWR0109" H 4250 1950 50  0001 C CNN
F 1 "+3.3V" H 4265 2273 50  0000 C CNN
F 2 "" H 4250 2100 50  0001 C CNN
F 3 "" H 4250 2100 50  0001 C CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2100 4250 2250
$Comp
L power:+5V #PWR0110
U 1 1 6212CD98
P 2500 1200
F 0 "#PWR0110" H 2500 1050 50  0001 C CNN
F 1 "+5V" H 2515 1373 50  0000 C CNN
F 2 "" H 2500 1200 50  0001 C CNN
F 3 "" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1200 2500 1350
NoConn ~ 3800 3700
NoConn ~ 3800 3800
NoConn ~ 3800 3900
NoConn ~ 3800 4000
NoConn ~ 3800 4200
NoConn ~ 3800 4400
NoConn ~ 3800 4500
NoConn ~ 3800 4600
NoConn ~ 3800 4800
NoConn ~ 3800 5000
NoConn ~ 5900 4000
NoConn ~ 5900 4100
NoConn ~ 5900 4200
NoConn ~ 5900 4300
NoConn ~ 5900 4500
NoConn ~ 5900 4600
NoConn ~ 5900 4700
NoConn ~ 5300 2950
NoConn ~ 5450 2950
NoConn ~ 9200 3900
NoConn ~ 9200 4000
Connection ~ 4250 2250
Connection ~ 4250 2850
Wire Wire Line
	4250 2250 6000 2250
Wire Wire Line
	8100 3900 8100 4000
Wire Wire Line
	8100 4100 8200 4100
Wire Wire Line
	8200 3900 8100 3900
$Comp
L Adafruit_ADS1115:Adafruit_ADS1115 U2
U 1 1 62117DE5
P 8700 3850
F 0 "U2" H 8700 4325 50  0000 C CNN
F 1 "Adafruit_ADS1115" H 8700 4234 50  0000 C CNN
F 2 "Adafruit_ADS1115:Adafruit_ADS1115" H 8750 3400 50  0001 C CNN
F 3 "" H 8950 3150 50  0001 C CNN
	1    8700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4000 8100 4000
Connection ~ 8100 4000
Wire Wire Line
	8100 4000 8100 4100
$Comp
L Everlight_AmbientLightSensor:ALS-PDIC243 U4
U 1 1 62120B4D
P 9900 2650
F 0 "U4" H 10180 2696 50  0000 L CNN
F 1 "ALS-PDIC243" H 10180 2605 50  0000 L CNN
F 2 "Everlight_AmbientLightSensor:ALS-PDIC243" H 9750 2350 50  0001 C CNN
F 3 "" H 10650 2950 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 62103994
P 10300 5400
F 0 "J2" H 10300 5650 50  0000 C CNN
F 1 "Batt Car 12V" H 10300 5550 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-2pol" H 10300 5400 50  0001 C CNN
F 3 "~" H 10300 5400 50  0001 C CNN
	1    10300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 62114C55
P 9400 5200
F 0 "R6" H 9470 5246 50  0000 L CNN
F 1 "68k" H 9470 5155 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9330 5200 50  0001 C CNN
F 3 "~" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 62116277
P 9400 5700
F 0 "R7" H 9470 5746 50  0000 L CNN
F 1 "18k" H 9470 5655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9330 5700 50  0001 C CNN
F 3 "~" H 9400 5700 50  0001 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 62116649
P 9400 6100
F 0 "#PWR0111" H 9400 5850 50  0001 C CNN
F 1 "GND" H 9405 5927 50  0000 C CNN
F 2 "" H 9400 6100 50  0001 C CNN
F 3 "" H 9400 6100 50  0001 C CNN
	1    9400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5400 10000 5400
Wire Wire Line
	10000 5400 10000 4950
Wire Wire Line
	9400 4950 9400 5050
Wire Wire Line
	9400 5350 9400 5450
$Comp
L Device:D_Zener D3
U 1 1 6211F0D8
P 8950 5700
F 0 "D3" V 8904 5779 50  0000 L CNN
F 1 "ZF4,7" V 8995 5779 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 8950 5700 50  0001 C CNN
F 3 "~" H 8950 5700 50  0001 C CNN
	1    8950 5700
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 621286D5
P 9700 4950
F 0 "D2" H 9700 5166 50  0000 C CNN
F 1 "1N4148" H 9700 5075 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 9700 4950 50  0001 C CNN
F 3 "~" H 9700 4950 50  0001 C CNN
	1    9700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4950 9850 4950
Wire Wire Line
	9550 4950 9400 4950
Wire Wire Line
	10100 5500 10000 5500
Wire Wire Line
	10000 5500 10000 5950
Wire Wire Line
	10000 5950 9400 5950
Wire Wire Line
	8950 5950 8950 5850
Wire Wire Line
	9400 5850 9400 5950
Connection ~ 9400 5950
Wire Wire Line
	9400 5950 8950 5950
Wire Wire Line
	8950 5550 8950 5450
Wire Wire Line
	8950 5450 9400 5450
Connection ~ 9400 5450
Wire Wire Line
	9400 5450 9400 5550
$Comp
L Device:C C4
U 1 1 62141670
P 8500 5700
F 0 "C4" H 8615 5746 50  0000 L CNN
F 1 "1µF" H 8615 5655 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 8538 5550 50  0001 C CNN
F 3 "~" H 8500 5700 50  0001 C CNN
	1    8500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5850 8500 5950
Wire Wire Line
	8500 5950 8950 5950
Connection ~ 8950 5950
Wire Wire Line
	8500 5550 8500 5450
Connection ~ 8950 5450
Wire Wire Line
	9400 5950 9400 6100
Wire Wire Line
	9200 3800 9350 3800
Wire Wire Line
	10000 2950 10000 3050
Wire Wire Line
	9350 3050 10000 3050
Connection ~ 10000 3050
Wire Wire Line
	10000 3050 10000 3150
Wire Wire Line
	8100 2250 10000 2250
Connection ~ 8100 2250
Wire Wire Line
	9350 4350 9350 3800
Wire Wire Line
	8500 4350 9350 4350
$Comp
L Device:C C2
U 1 1 621A0ED0
P 7750 3350
F 0 "C2" H 7865 3396 50  0000 L CNN
F 1 "1µF" H 7865 3305 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7788 3200 50  0001 C CNN
F 3 "~" H 7750 3350 50  0001 C CNN
	1    7750 3350
	1    0    0    -1  
$EndComp
Text Notes 10400 5500 0    50   ~ 0
CarBatt.\n(Vin max: 15V)
Text Notes 9400 4250 0    50   ~ 0
2,09V @ 10V CarBatt\n2,51V @ 12V CarBatt\n2,93V @ 14V CarBatt\n
Wire Wire Line
	3600 7450 1850 7450
Connection ~ 1850 7450
Wire Wire Line
	3600 4900 3800 4900
Wire Wire Line
	5900 4900 6050 4900
Connection ~ 2500 1350
Wire Wire Line
	2500 1350 4850 1350
Wire Wire Line
	2500 4100 2400 4100
Wire Wire Line
	2400 4300 2500 4300
Connection ~ 2750 2250
Wire Wire Line
	2750 2250 4250 2250
Wire Wire Line
	2400 4200 2750 4200
Wire Wire Line
	2750 4600 2750 4700
Wire Wire Line
	3800 4700 2750 4700
Connection ~ 2750 4700
Wire Wire Line
	2750 4700 2750 4800
Wire Wire Line
	2750 2800 2750 2900
Wire Wire Line
	3100 2900 2750 2900
Connection ~ 2750 2900
Wire Wire Line
	2750 2900 2750 3000
Wire Wire Line
	6050 6500 3100 6500
$Comp
L Heltec_WiFi_LoRa_V2:Heltec_WiFi_LoRa_V2_L U1
U 1 1 620838D6
P 4850 4150
F 0 "U1" H 4050 2850 50  0000 C CNN
F 1 "Heltec_WiFi_LoRa_V2_L" H 4550 4850 50  0000 C CNN
F 2 "Heltec_WiFi_LoRa_V2:Heltec_WiFi_LoRa_V2" H 4850 4150 50  0001 C CNN
F 3 "" H 4850 4150 50  0001 C CNN
	1    4850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5550 8100 5700
$Comp
L Device:LED D103
U 1 1 625A9A49
P 8100 5850
F 0 "D103" V 8100 5700 50  0000 C CNN
F 1 "LED" V 8200 5700 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 8100 5850 50  0001 C CNN
F 3 "~" H 8100 5850 50  0001 C CNN
	1    8100 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R103
U 1 1 625A9A53
P 8100 5400
F 0 "R103" H 7950 5350 50  0000 C CNN
F 1 "470R" H 7950 5450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8030 5400 50  0001 C CNN
F 3 "~" H 8100 5400 50  0001 C CNN
	1    8100 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 625A9A5E
P 8100 6100
F 0 "#PWR0112" H 8100 5850 50  0001 C CNN
F 1 "GND" H 8105 5927 50  0000 C CNN
F 2 "" H 8100 6100 50  0001 C CNN
F 3 "" H 8100 6100 50  0001 C CNN
	1    8100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6000 8100 6100
Wire Wire Line
	8100 4250 8100 4100
Wire Wire Line
	8500 4350 8500 5450
Connection ~ 8500 5450
Wire Wire Line
	8500 5450 8950 5450
Wire Wire Line
	6050 4900 6050 6500
Wire Wire Line
	3100 2900 3100 6500
Wire Wire Line
	8100 5250 8100 5100
Wire Wire Line
	7750 5100 7750 6150
Wire Wire Line
	7750 6150 3350 6150
Wire Wire Line
	3800 4300 3350 4300
Wire Wire Line
	3350 4300 3350 6150
Text Notes 8450 1050 0    50   ~ 0
LED  D101:    Red      Motion Active\nLED  D102:    Green    LoRa Transmission Active\nLED  D103:    Yellow   CarBatt Connected
Wire Wire Line
	7750 5100 8100 5100
$Comp
L Device:D_Schottky D4
U 1 1 62639770
P 8950 5200
F 0 "D4" V 8904 5279 50  0000 L CNN
F 1 "BAT42" V 8995 5279 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 8950 5200 50  0001 C CNN
F 3 "~" H 8950 5200 50  0001 C CNN
	1    8950 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 5450 8950 5350
$Comp
L power:+3.3V #PWR0113
U 1 1 626467FF
P 8950 4950
F 0 "#PWR0113" H 8950 4800 50  0001 C CNN
F 1 "+3.3V" H 8965 5123 50  0000 C CNN
F 2 "" H 8950 4950 50  0001 C CNN
F 3 "" H 8950 4950 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4950 8950 5050
$EndSCHEMATC
