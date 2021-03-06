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
LIBS:V3-cache
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
L Conn_02x03_Row_Letter_Last J3
U 1 1 5AA17AD0
P 7550 2450
F 0 "J3" H 7600 2650 50  0000 C CNN
F 1 "PWR" H 7600 2250 50  0000 C CNN
F 2 "ESP32_LoRa:PWR" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5AA17B46
P 7600 3550
F 0 "J6" H 7600 3650 50  0000 C CNN
F 1 "I2C" H 7600 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7600 3550 50  0001 C CNN
F 3 "" H 7600 3550 50  0001 C CNN
	1    7600 3550
	1    0    0    -1  
$EndComp
Text GLabel 4300 2000 0    60   Output ~ 0
GND
Text GLabel 4300 2100 0    60   Output ~ 0
5V
Text GLabel 4300 2200 0    60   Output ~ 0
3V3
Text GLabel 6400 2000 2    60   Output ~ 0
GND
Text GLabel 6400 2100 2    60   Output ~ 0
5V
Text GLabel 6400 2200 2    60   Output ~ 0
3V3
Text GLabel 7850 2350 2    60   Output ~ 0
GND
Text GLabel 7850 2450 2    60   Output ~ 0
5V
Text GLabel 7850 2550 2    60   Output ~ 0
3V3
Text GLabel 7350 2350 0    60   Output ~ 0
GND
Text GLabel 7350 2450 0    60   Output ~ 0
5V
Text GLabel 7350 2550 0    60   Output ~ 0
3V3
Text GLabel 6400 2800 2    60   Output ~ 0
SCL
Text GLabel 7400 3550 0    60   Output ~ 0
SCL
Text GLabel 4300 3700 0    60   BiDi ~ 0
SDA
Text GLabel 7400 3650 0    60   BiDi ~ 0
SDA
Text GLabel 4300 2300 0    60   BiDi ~ 0
ADC0
Text GLabel 4300 2400 0    60   BiDi ~ 0
ADC1
Text GLabel 4300 2500 0    60   BiDi ~ 0
ADC2
Text GLabel 4300 2600 0    60   BiDi ~ 0
ADC3
Text GLabel 7400 2900 0    60   BiDi ~ 0
ADC0
Text GLabel 7400 3000 0    60   BiDi ~ 0
ADC1
Text GLabel 7400 3100 0    60   BiDi ~ 0
ADC2
Text GLabel 7400 3200 0    60   BiDi ~ 0
ADC3
$Comp
L Conn_01x04 J5
U 1 1 5AA1805E
P 7600 3000
F 0 "J5" H 7600 3200 50  0000 C CNN
F 1 "GPIOs/ADCs" H 7600 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7600 3000 50  0001 C CNN
F 3 "" H 7600 3000 50  0001 C CNN
	1    7600 3000
	1    0    0    -1  
$EndComp
$Comp
L Sensirion S1
U 1 1 5AA18358
P 9200 4550
F 0 "S1" H 9100 4850 60  0000 C CNN
F 1 "Sensirion" H 9100 4200 60  0000 C CNN
F 2 "ESP32_LoRa:FFC Amphenol" H 8700 4950 60  0001 C CNN
F 3 "" H 8700 4950 60  0001 C CNN
	1    9200 4550
	1    0    0    1   
$EndComp
Text GLabel 7900 4100 1    60   Input ~ 0
SCL
Text GLabel 7900 5100 3    60   BiDi ~ 0
SDA
Text GLabel 8750 4600 0    60   Input ~ 0
GND
Text GLabel 8750 4400 0    60   Input ~ 0
1V8
$Comp
L LM1117-1.8-RESCUE-V1 U1
U 1 1 5AA18587
P 6100 4300
F 0 "U1" H 5950 4425 50  0000 C CNN
F 1 "LM1117-1.8" H 6100 4425 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 6100 4300 50  0001 C CNN
F 3 "" H 6100 4300 50  0001 C CNN
	1    6100 4300
	1    0    0    -1  
$EndComp
Text GLabel 6400 4300 2    60   Output ~ 0
1V8
Text GLabel 6100 4600 3    60   Input ~ 0
GND
Text GLabel 5800 4300 0    60   Input ~ 0
3V3
$Comp
L BSS138-RESCUE-V1 Q2
U 1 1 5AA186F4
P 8000 4900
F 0 "Q2" H 8200 4975 50  0000 L CNN
F 1 "BSS138" H 8200 4900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8200 4825 50  0001 L CIN
F 3 "" H 8000 4900 50  0001 L CNN
	1    8000 4900
	-1   0    0    1   
$EndComp
$Comp
L BSS138-RESCUE-V1 Q1
U 1 1 5AA18753
P 8000 4300
F 0 "Q1" H 8200 4375 50  0000 L CNN
F 1 "BSS138" H 8200 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8200 4225 50  0001 L CIN
F 3 "" H 8000 4300 50  0001 L CNN
	1    8000 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 4700 7900 4700
Wire Wire Line
	8750 4500 7900 4500
$Comp
L R R4
U 1 1 5AA189DE
P 8350 4850
F 0 "R4" V 8430 4850 50  0000 C CNN
F 1 "10k" V 8350 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8280 4850 50  0001 C CNN
F 3 "" H 8350 4850 50  0001 C CNN
	1    8350 4850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AA18AB8
P 8350 4350
F 0 "R3" V 8430 4350 50  0000 C CNN
F 1 "10k" V 8350 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8280 4350 50  0001 C CNN
F 3 "" H 8350 4350 50  0001 C CNN
	1    8350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4300 8200 4200
Wire Wire Line
	8200 4200 8350 4200
Wire Wire Line
	8200 4900 8200 5000
Wire Wire Line
	8200 5000 8350 5000
Text GLabel 8350 4200 1    60   Input ~ 0
1V8
Text GLabel 8350 5000 3    60   Input ~ 0
1V8
$Comp
L R R1
U 1 1 5AA18B5F
P 7750 4100
F 0 "R1" V 7830 4100 50  0000 C CNN
F 1 "10k" V 7750 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7680 4100 50  0001 C CNN
F 3 "" H 7750 4100 50  0001 C CNN
	1    7750 4100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AA18C81
P 7750 5100
F 0 "R2" V 7830 5100 50  0000 C CNN
F 1 "10k" V 7750 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7680 5100 50  0001 C CNN
F 3 "" H 7750 5100 50  0001 C CNN
	1    7750 5100
	0    1    1    0   
$EndComp
Text GLabel 7600 4100 0    60   Input ~ 0
3V3
Text GLabel 7600 5100 0    60   Input ~ 0
3V3
$Comp
L Conn_01x03 J4
U 1 1 5AA2551F
P 7600 1700
F 0 "J4" H 7600 1900 50  0000 C CNN
F 1 "PIR" H 7600 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    1   
$EndComp
Text GLabel 7400 1800 0    60   Input ~ 0
GND
Text GLabel 4300 3600 0    60   Input ~ 0
PIR
Text GLabel 7400 1700 0    60   Output ~ 0
PIR
Text GLabel 7400 1200 0    60   Input ~ 0
5V
Connection ~ 8350 4700
Connection ~ 8350 4500
$Comp
L ESP32_LoRa_OLED ESP_1
U 1 1 5AA91A93
P 5350 2850
F 0 "ESP_1" H 5350 3900 60  0000 C CNN
F 1 "ESP32_LoRa_OLED" H 5350 3700 60  0000 C CNN
F 2 "ESP32_LoRa:ESP32_LoRa" H 4600 3900 60  0001 C CNN
F 3 "" H 4600 3900 60  0001 C CNN
	1    5350 2850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J7
U 1 1 5AB15454
P 7900 3000
F 0 "J7" H 7900 3200 50  0000 C CNN
F 1 "GPIOs/ADCs" H 7900 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7900 3000 50  0001 C CNN
F 3 "" H 7900 3000 50  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3000 7400 3000
Wire Wire Line
	7400 3100 7700 3100
Wire Wire Line
	7700 3200 7400 3200
Wire Wire Line
	7700 2900 7400 2900
$Comp
L Conn_01x03 J9
U 1 1 5AB1558E
P 8400 2450
F 0 "J9" H 8400 2650 50  0000 C CNN
F 1 "PWR" H 8400 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8400 2450 50  0001 C CNN
F 3 "" H 8400 2450 50  0001 C CNN
	1    8400 2450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J8
U 1 1 5AB15680
P 7900 3550
F 0 "J8" H 7900 3650 50  0000 C CNN
F 1 "I2C" H 7900 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7900 3550 50  0001 C CNN
F 3 "" H 7900 3550 50  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3550 7700 3550
Wire Wire Line
	7700 3650 7400 3650
$Comp
L GS2 J2
U 1 1 5AB18ABB
P 7400 1400
F 0 "J2" H 7500 1550 50  0000 C CNN
F 1 "GS2" H 7500 1251 50  0000 C CNN
F 2 "Connectors:GS2" V 7474 1400 50  0001 C CNN
F 3 "" H 7400 1400 50  0001 C CNN
	1    7400 1400
	1    0    0    -1  
$EndComp
$Comp
L GS2 J1
U 1 1 5AB18E94
P 7200 1600
F 0 "J1" H 7300 1750 50  0000 C CNN
F 1 "GS2" H 7300 1451 50  0000 C CNN
F 2 "Connectors:GS2" V 7274 1600 50  0001 C CNN
F 3 "" H 7200 1600 50  0001 C CNN
	1    7200 1600
	0    1    1    0   
$EndComp
Text GLabel 7000 1600 0    60   Input ~ 0
3V3
$Comp
L Conn_01x03 J12
U 1 1 5AB18F51
P 8850 1700
F 0 "J12" H 8850 1900 50  0000 C CNN
F 1 "PIR Trig" H 8850 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8850 1700 50  0001 C CNN
F 3 "" H 8850 1700 50  0001 C CNN
	1    8850 1700
	1    0    0    -1  
$EndComp
Text GLabel 8650 1600 1    60   Input ~ 0
GND
Text GLabel 8550 2200 2    60   Input ~ 0
3V3
Wire Wire Line
	7850 2550 8200 2550
Wire Wire Line
	8200 2450 7850 2450
Wire Wire Line
	7850 2350 8200 2350
$Comp
L GS3 J10
U 1 1 5AB26335
P 8350 1700
F 0 "J10" H 8400 1900 50  0000 C CNN
F 1 "GS3" H 8400 1501 50  0000 C CNN
F 2 "Connectors:GS3" V 8438 1626 50  0001 C CNN
F 3 "" H 8350 1700 50  0001 C CNN
	1    8350 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 1600 8500 1600
Wire Wire Line
	8500 1800 8650 1800
Wire Wire Line
	8650 1700 8200 1700
$Comp
L GS2 J11
U 1 1 5AB267F3
P 8550 2000
F 0 "J11" H 8650 2150 50  0000 C CNN
F 1 "GS2" H 8650 1851 50  0000 C CNN
F 2 "Connectors:GS2" V 8624 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
Connection ~ 8550 1800
$Comp
L C_Small C1
U 1 1 5AC33688
P 6450 4600
F 0 "C1" H 6460 4670 50  0000 L CNN
F 1 "C_Small" H 6460 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6450 4600 50  0001 C CNN
F 3 "" H 6450 4600 50  0001 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6400 4500
Wire Wire Line
	6400 4500 6450 4500
Wire Wire Line
	6100 4600 6300 4600
Wire Wire Line
	6300 4600 6300 4700
Wire Wire Line
	6300 4700 6450 4700
$EndSCHEMATC
