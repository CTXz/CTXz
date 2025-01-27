EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Not-So-Tiny Dimmer (Non-Addressable strips version) "
Date ""
Rev "1.3"
Comp ""
Comment1 ""
Comment2 "https://tapr.org/the-tapr-open-hardware-license/"
Comment3 "License: TAPR Open Hardware License v1.0"
Comment4 "Author: Patrick Pedersen"
$EndDescr
Text Notes 9150 3300 0    50   ~ 0
ICSP
Wire Notes Line
	750  2700 750  5800
Wire Wire Line
	10650 4500 10350 4500
Wire Wire Line
	10650 4650 10650 4500
Wire Wire Line
	10650 4300 10350 4300
Wire Wire Line
	10650 4150 10650 4300
Wire Wire Line
	9700 4400 9850 4400
Wire Wire Line
	9850 4500 9700 4500
Wire Wire Line
	10500 4400 10350 4400
Wire Wire Line
	9700 4300 9850 4300
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5EAC515A
P 10050 4400
F 0 "J4" H 10100 4717 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 10100 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10050 4400 50  0001 C CNN
F 3 "~" H 10050 4400 50  0001 C CNN
	1    10050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5250 2400 5450
Connection ~ 2400 5250
Connection ~ 1500 5250
Wire Wire Line
	1500 5250 2400 5250
Wire Wire Line
	2400 4900 2400 5250
Connection ~ 1000 5250
Connection ~ 1000 3600
Wire Wire Line
	1000 5250 1500 5250
Wire Wire Line
	1000 4550 1000 5250
Wire Wire Line
	1500 4550 1500 5250
Wire Wire Line
	2400 3600 2400 4000
Connection ~ 2400 3600
Connection ~ 1500 3600
Wire Wire Line
	1500 3600 2400 3600
Wire Wire Line
	1000 3600 1000 4250
Wire Wire Line
	1500 3600 1000 3600
Wire Wire Line
	1500 4250 1500 3600
$Comp
L Device:CP1 C1
U 1 1 5E9CA3FB
P 1000 4400
F 0 "C1" H 1115 4446 50  0000 L CNN
F 1 "10uF" H 1115 4355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1000 4400 50  0001 C CNN
F 3 "~" H 1000 4400 50  0001 C CNN
	1    1000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E9C847F
P 1500 4400
F 0 "C2" H 1615 4446 50  0000 L CNN
F 1 "100nF" H 1615 4355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 1538 4250 50  0001 C CNN
F 3 "~" H 1500 4400 50  0001 C CNN
	1    1500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3500 2400 3600
$Comp
L power:+5V #PWR03
U 1 1 5E8839D8
P 10650 4150
F 0 "#PWR03" H 10650 4000 50  0001 C CNN
F 1 "+5V" H 10665 4323 50  0000 C CNN
F 2 "" H 10650 4150 50  0001 C CNN
F 3 "" H 10650 4150 50  0001 C CNN
	1    10650 4150
	1    0    0    -1  
$EndComp
Text GLabel 9700 4500 0    50   Input ~ 0
RST-PB5
$Comp
L power:GND #PWR04
U 1 1 5E87AFDD
P 10650 4650
F 0 "#PWR04" H 10650 4400 50  0001 C CNN
F 1 "GND" H 10655 4477 50  0000 C CNN
F 2 "" H 10650 4650 50  0001 C CNN
F 3 "" H 10650 4650 50  0001 C CNN
	1    10650 4650
	1    0    0    -1  
$EndComp
Text GLabel 10500 4400 2    50   Input ~ 0
MOSI-PB0
Text GLabel 9700 4400 0    50   Input ~ 0
SCK-PB2
Text GLabel 9700 4300 0    50   Input ~ 0
MISO-PB1
$Comp
L power:GND #PWR02
U 1 1 5E8578B9
P 2400 5450
F 0 "#PWR02" H 2400 5200 50  0001 C CNN
F 1 "GND" H 2405 5277 50  0000 C CNN
F 2 "" H 2400 5450 50  0001 C CNN
F 3 "" H 2400 5450 50  0001 C CNN
	1    2400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5E8568EC
P 2400 3500
F 0 "#PWR01" H 2400 3350 50  0001 C CNN
F 1 "+5V" H 2415 3673 50  0000 C CNN
F 2 "" H 2400 3500 50  0001 C CNN
F 3 "" H 2400 3500 50  0001 C CNN
	1    2400 3500
	1    0    0    -1  
$EndComp
$Comp
L dk_Embedded-Microcontrollers:ATTINY85-20PU U1
U 1 1 5E854FF7
P 2500 4400
F 0 "U1" H 2728 4403 60  0000 L CNN
F 1 "ATTINYx5" H 2728 4297 60  0000 L CNN
F 2 "digikey-footprints:DIP-8_W7.62mm" H 2700 4600 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589894" H 2700 4700 60  0001 L CNN
F 4 "ATTINY85-20PU-ND" H 2700 4800 60  0001 L CNN "Digi-Key_PN"
F 5 "ATTINY85-20PU" H 2700 4900 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2700 5000 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 2700 5100 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589894" H 2700 5200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATTINY85-20PU/ATTINY85-20PU-ND/735469" H 2700 5300 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 8KB FLASH 8DIP" H 2700 5400 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 2700 5500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2700 5600 60  0001 L CNN "Status"
	1    2500 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2950 4300 2700 4300
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EB819B2
P 1000 3450
F 0 "#FLG01" H 1000 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 3623 50  0000 C CNN
F 2 "" H 1000 3450 50  0001 C CNN
F 3 "~" H 1000 3450 50  0001 C CNN
	1    1000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3450 1000 3600
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EB83634
P 1000 5450
F 0 "#FLG02" H 1000 5525 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 5623 50  0000 C CNN
F 2 "" H 1000 5450 50  0001 C CNN
F 3 "~" H 1000 5450 50  0001 C CNN
	1    1000 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 5450 1000 5250
Wire Wire Line
	3150 4700 2700 4700
Connection ~ 3150 4700
Connection ~ 3050 4400
Wire Wire Line
	2700 4200 2850 4200
Wire Notes Line
	9100 5800 9100 2700
Wire Wire Line
	3150 4100 3150 4700
Wire Wire Line
	3050 4100 3050 4400
Wire Wire Line
	2950 4100 2950 4300
Wire Wire Line
	2850 4100 2850 4200
Text GLabel 2950 4100 1    50   Input ~ 0
MISO-PB1
Text GLabel 3050 4100 1    50   Input ~ 0
SCK-PB2
Text GLabel 3150 4100 1    50   Input ~ 0
RST-PB5
Text GLabel 2850 4100 1    50   Input ~ 0
MOSI-PB0
Wire Wire Line
	4800 4400 3050 4400
Wire Wire Line
	3400 4700 3150 4700
Wire Wire Line
	5850 4400 6000 4400
Wire Wire Line
	5300 4400 5100 4400
Connection ~ 5300 4400
Wire Wire Line
	5300 4650 5300 4400
$Comp
L Device:CP1 C3
U 1 1 5E9FB50B
P 5300 4800
F 0 "C3" H 5415 4846 50  0000 L CNN
F 1 "100nF" H 5415 4755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 5300 4800 50  0001 C CNN
F 3 "~" H 5300 4800 50  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4400 5300 4400
$Comp
L dk_Pushbutton-Switches:GPTS203211B S1
U 1 1 5E8584FE
P 5650 4400
F 0 "S1" H 5650 4300 50  0000 C CNN
F 1 "Push Button" H 5650 4584 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5850 4600 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 5850 4700 60  0001 L CNN
F 4 "CW181-ND" H 5850 4800 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 5850 4900 60  0001 L CNN "MPN"
F 6 "Switches" H 5850 5000 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 5850 5100 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 5850 5200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 5850 5300 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 5850 5400 60  0001 L CNN "Description"
F 11 "CW Industries" H 5850 5500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5850 5600 60  0001 L CNN "Status"
	1    5650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3600 3400 3600
$Comp
L Device:R R1
U 1 1 5EB0B5D0
P 3400 3900
F 0 "R1" H 3470 3946 50  0000 L CNN
F 1 "10k" H 3470 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3330 3900 50  0001 C CNN
F 3 "~" H 3400 3900 50  0001 C CNN
	1    3400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3750 3400 3600
Connection ~ 3400 3600
Wire Wire Line
	3400 4050 3400 4700
Text Notes 8600 3200 0    50   ~ 0
12V
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5EBC2D69
P 10900 2450
F 0 "#LOGO1" H 10900 2725 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 2225 50  0001 C CNN
F 2 "" H 10900 2450 50  0001 C CNN
F 3 "~" H 10900 2450 50  0001 C CNN
	1    10900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4200 4300 4200
Connection ~ 2850 4200
Wire Wire Line
	2950 4300 4450 4300
Connection ~ 2950 4300
Wire Wire Line
	2400 5250 3950 5250
Wire Wire Line
	3400 3600 3950 3600
Wire Wire Line
	3700 4500 2700 4500
Wire Wire Line
	3700 3900 3700 4500
Wire Wire Line
	3800 3900 3700 3900
$Comp
L Device:R_POT RV1
U 1 1 5E865E0F
P 3950 3900
F 0 "RV1" H 3881 3946 50  0000 R CNN
F 1 "10k" H 3881 3855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3950 3900 50  0001 C CNN
F 3 "~" H 3950 3900 50  0001 C CNN
	1    3950 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 4050 3950 5250
Connection ~ 3950 5250
Wire Wire Line
	3950 5250 5300 5250
Wire Wire Line
	3950 3750 3950 3600
Wire Wire Line
	6000 4400 6000 5250
Wire Wire Line
	5300 4950 5300 5250
Connection ~ 5300 5250
Wire Wire Line
	5300 5250 6000 5250
Wire Wire Line
	4300 3600 5500 3600
Wire Wire Line
	4300 3600 4300 4200
Wire Wire Line
	4600 4600 2700 4600
$Comp
L Device:R R2
U 1 1 5E9F7182
P 4950 4400
F 0 "R2" V 4850 4400 50  0000 C CNN
F 1 "1k" V 5050 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4880 4400 50  0001 C CNN
F 3 "~" H 4950 4400 50  0001 C CNN
	1    4950 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3850 4450 4300
Wire Wire Line
	7750 4150 5800 4150
Wire Wire Line
	4600 4150 4600 4600
Connection ~ 2700 4600
Wire Wire Line
	2700 4600 2650 4600
Wire Wire Line
	3000 4400 3050 4400
Wire Wire Line
	2700 4400 3050 4400
Connection ~ 6000 5250
Wire Wire Line
	3950 3200 3950 3600
Connection ~ 3950 3600
Text Notes 8150 3200 0    50   ~ 0
5V
Wire Wire Line
	8450 3200 8450 3050
Wire Wire Line
	8250 3050 8250 3200
Wire Wire Line
	8250 3200 3950 3200
Wire Wire Line
	8350 3050 8350 5250
Wire Wire Line
	8350 5250 8050 5250
Connection ~ 8050 5250
Wire Wire Line
	8050 5250 7200 5250
Connection ~ 7200 5250
Wire Wire Line
	7200 5250 6350 5250
Connection ~ 6350 5250
Wire Wire Line
	6350 5250 6000 5250
$Comp
L Device:R R3
U 1 1 5EBF600A
P 5650 3600
F 0 "R3" V 5550 3550 50  0000 C CNN
F 1 "1k" V 5550 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5580 3600 50  0001 C CNN
F 3 "~" H 5650 3600 50  0001 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3600 6050 3600
$Comp
L Device:R R4
U 1 1 5EBF6B6F
P 5650 3850
F 0 "R4" V 5550 3800 50  0000 C CNN
F 1 "1k" V 5550 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5580 3850 50  0001 C CNN
F 3 "~" H 5650 3850 50  0001 C CNN
	1    5650 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3850 4450 3850
$Comp
L Device:R R5
U 1 1 5EBF6D71
P 5650 4150
F 0 "R5" V 5550 4100 50  0000 C CNN
F 1 "1k" V 5550 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5580 4150 50  0001 C CNN
F 3 "~" H 5650 4150 50  0001 C CNN
	1    5650 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4150 4600 4150
Wire Notes Line
	11100 2700 11100 5800
Wire Notes Line
	750  5800 11100 5800
Wire Notes Line
	750  2700 11100 2700
Text Notes 9450 3450 3    50   ~ 0
GND
Text Notes 8600 3300 0    50   ~ 0
R
Text Notes 8600 3400 0    50   ~ 0
G
Text Notes 8600 3500 0    50   ~ 0
B
Wire Wire Line
	5800 3850 6900 3850
Wire Wire Line
	8050 4250 8050 5250
Wire Wire Line
	7200 3950 7200 5250
Wire Wire Line
	7200 3400 7200 3550
Wire Wire Line
	8750 3500 8050 3500
Wire Wire Line
	8750 3400 7200 3400
Wire Wire Line
	8750 3200 8450 3200
$Comp
L Connector:Screw_Terminal_01x04 J3
U 1 1 5EB9A631
P 8950 3300
F 0 "J3" H 8950 3500 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 9030 3201 50  0001 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-4_1x04_P2.54mm_Horizontal" H 8950 3300 50  0001 C CNN
F 3 "~" H 8950 3300 50  0001 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3300 6350 3300
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRF510PBF Q1
U 1 1 5EC684B6
P 6350 3500
F 0 "Q1" H 6458 3553 60  0000 L CNN
F 1 "IRF630" H 6458 3447 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 6550 3700 60  0001 L CNN
F 3 "" H 6550 3800 60  0001 L CNN
F 4 "" H 6550 3900 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 6550 4000 60  0001 L CNN "MPN"
F 6 "" H 6550 4100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6550 4200 60  0001 L CNN "Family"
F 8 "" H 6550 4300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 6550 4400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH" H 6550 4500 60  0001 L CNN "Description"
F 11 "" H 6550 4600 60  0001 L CNN "Manufacturer"
F 12 "" H 6550 4700 60  0001 L CNN "Status"
	1    6350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3700 6350 5250
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRF510PBF Q2
U 1 1 5ECA63E8
P 7200 3750
F 0 "Q2" H 7308 3803 60  0000 L CNN
F 1 "IRF630" H 7308 3697 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 7400 3950 60  0001 L CNN
F 3 "" H 7400 4050 60  0001 L CNN
F 4 "" H 7400 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 7400 4250 60  0001 L CNN "MPN"
F 6 "" H 7400 4350 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7400 4450 60  0001 L CNN "Family"
F 8 "" H 7400 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 7400 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH" H 7400 4750 60  0001 L CNN "Description"
F 11 "" H 7400 4850 60  0001 L CNN "Manufacturer"
F 12 "" H 7400 4950 60  0001 L CNN "Status"
	1    7200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3500 8050 3850
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRF510PBF Q3
U 1 1 5ECA78CA
P 8050 4050
F 0 "Q3" H 8158 4103 60  0000 L CNN
F 1 "IRF630" H 7700 3800 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 8250 4250 60  0001 L CNN
F 3 "" H 8250 4350 60  0001 L CNN
F 4 "" H 8250 4450 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 8250 4550 60  0001 L CNN "MPN"
F 6 "" H 8250 4650 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8250 4750 60  0001 L CNN "Family"
F 8 "" H 8250 4850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 8250 4950 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH" H 8250 5050 60  0001 L CNN "Description"
F 11 "" H 8250 5150 60  0001 L CNN "Manufacturer"
F 12 "" H 8250 5250 60  0001 L CNN "Status"
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5EA094DC
P 8250 2850
F 0 "J1" V 8350 2650 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 8150 3900 50  0001 R CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 8250 2850 50  0001 C CNN
F 3 "~" H 8250 2850 50  0001 C CNN
	1    8250 2850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5EA0A617
P 8450 2850
F 0 "J2" V 8550 3100 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 8323 2662 50  0001 R CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 8450 2850 50  0001 C CNN
F 3 "~" H 8450 2850 50  0001 C CNN
	1    8450 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 3050 8550 5250
Wire Wire Line
	8550 5250 8350 5250
Connection ~ 8350 5250
Text Notes 8350 3200 1    50   ~ 0
GND
Text Notes 8550 3200 1    50   ~ 0
GND
$EndSCHEMATC
