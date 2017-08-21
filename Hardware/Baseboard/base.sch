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
LIBS:relays
LIBS:dc-dc
LIBS:Symbols_Socket-DIN41612_RevA
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Design1"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ULN2803A U2
U 1 1 5930BC7E
P 6250 2250
F 0 "U2" H 6250 2775 50  0000 C CNN
F 1 "ULN2803A" H 6250 2700 50  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm" H 6300 1600 50  0001 L CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6250 2250
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5930BD69
P 6550 3000
F 0 "C3" H 6575 3100 50  0000 L CNN
F 1 "100n" H 6575 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6588 2850 50  0001 C CNN
F 3 "" H 6550 3000 50  0001 C CNN
	1    6550 3000
	0    1    1    0   
$EndComp
Text Label 6250 3000 0    60   ~ 0
GND
Text Label 6750 2850 0    60   ~ 0
5V
$Comp
L G5Q-1 RL1
U 1 1 5930BF6B
P 7500 1175
F 0 "RL1" H 8150 1525 50  0000 L CNN
F 1 "G5Q-1" H 8150 1425 50  0000 L CNN
F 2 "myrelay:Relay-JQC-3FF-5V" H 8150 1325 50  0001 L CNN
F 3 "" H 7700 975 50  0000 C CNN
	1    7500 1175
	1    0    0    -1  
$EndComp
$Comp
L G5Q-1 RL2
U 1 1 5930C018
P 7500 1975
F 0 "RL2" H 8150 2325 50  0000 L CNN
F 1 "G5Q-1" H 8150 2225 50  0000 L CNN
F 2 "myrelay:Relay-JQC-3FF-5V" H 8150 2125 50  0001 L CNN
F 3 "" H 7700 1775 50  0000 C CNN
	1    7500 1975
	1    0    0    -1  
$EndComp
$Comp
L G5Q-1 RL3
U 1 1 5930C051
P 7500 2825
F 0 "RL3" H 8150 3175 50  0000 L CNN
F 1 "G5Q-1" H 8150 3075 50  0000 L CNN
F 2 "myrelay:Relay-JQC-3FF-5V" H 8150 2975 50  0001 L CNN
F 3 "" H 7700 2625 50  0000 C CNN
	1    7500 2825
	1    0    0    -1  
$EndComp
$Comp
L G5Q-1 RL4
U 1 1 5930C08B
P 7500 3625
F 0 "RL4" H 8150 3975 50  0000 L CNN
F 1 "G5Q-1" H 8150 3875 50  0000 L CNN
F 2 "myrelay:Relay-JQC-3FF-5V" H 8150 3775 50  0001 L CNN
F 3 "" H 7700 3425 50  0000 C CNN
	1    7500 3625
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D1
U 1 1 5930C0BD
P 7150 975
F 0 "D1" H 7150 1075 50  0000 C CNN
F 1 "D_Zener" H 7150 875 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7150 975 50  0001 C CNN
F 3 "" H 7150 975 50  0001 C CNN
	1    7150 975 
	0    1    1    0   
$EndComp
$Comp
L D_Zener D2
U 1 1 5930C140
P 7150 1775
F 0 "D2" H 7150 1875 50  0000 C CNN
F 1 "D_Zener" H 7150 1675 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7150 1775 50  0001 C CNN
F 3 "" H 7150 1775 50  0001 C CNN
	1    7150 1775
	0    1    1    0   
$EndComp
$Comp
L D_Zener D3
U 1 1 5930C185
P 7150 2625
F 0 "D3" H 7150 2725 50  0000 C CNN
F 1 "D_Zener" H 7150 2525 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7150 2625 50  0001 C CNN
F 3 "" H 7150 2625 50  0001 C CNN
	1    7150 2625
	0    1    1    0   
$EndComp
$Comp
L D_Zener D4
U 1 1 5930C1D1
P 7150 3425
F 0 "D4" H 7150 3525 50  0000 C CNN
F 1 "D_Zener" H 7150 3325 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF_Handsoldering" H 7150 3425 50  0001 C CNN
F 3 "" H 7150 3425 50  0001 C CNN
	1    7150 3425
	0    1    1    0   
$EndComp
Text Label 7825 625  0    60   ~ 0
5V
Text Label 7250 1325 0    60   ~ 0
O1
Text Label 7250 1425 0    60   ~ 0
5V
Text Label 7250 2125 0    60   ~ 0
O2
Text Label 7250 2275 0    60   ~ 0
5V
Text Label 7250 2975 0    60   ~ 0
O3
Text Label 7250 3075 0    60   ~ 0
5V
Text Label 7250 3775 0    60   ~ 0
O4
$Comp
L CONN_01X12 J5
U 1 1 5930CB2F
P 9275 2100
F 0 "J5" H 9275 2750 50  0000 C CNN
F 1 "CONN_01X12" V 9375 2100 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-12pol" H 9275 2100 50  0001 C CNN
F 3 "" H 9275 2100 50  0001 C CNN
	1    9275 2100
	1    0    0    -1  
$EndComp
Text Label 7800 675  0    60   ~ 0
1
Text Label 8000 675  0    60   ~ 0
3
Text Label 7900 1325 0    60   ~ 0
2
Text Label 7800 1475 0    60   ~ 0
4
Text Label 8000 1475 0    60   ~ 0
6
Text Label 7900 2125 0    60   ~ 0
5
Text Label 7800 2325 0    60   ~ 0
7
Text Label 8000 2325 0    60   ~ 0
9
Text Label 7900 2975 0    60   ~ 0
8
Text Label 7800 3125 0    60   ~ 0
10
Text Label 8000 3125 0    60   ~ 0
12
Text Label 7900 3775 0    60   ~ 0
11
Text Label 9025 1550 0    60   ~ 0
1
Text Label 9025 1650 0    60   ~ 0
2
Text Label 9025 1750 0    60   ~ 0
3
Text Label 9025 1850 0    60   ~ 0
4
Text Label 9025 1950 0    60   ~ 0
5
Text Label 9025 2050 0    60   ~ 0
6
Text Label 9025 2150 0    60   ~ 0
7
Text Label 9025 2250 0    60   ~ 0
8
Text Label 9025 2350 0    60   ~ 0
9
Text Label 9025 2450 0    60   ~ 0
10
Text Label 9025 2550 0    60   ~ 0
11
Text Label 9025 2650 0    60   ~ 0
12
$Comp
L +5V #PWR01
U 1 1 5930DA71
P 1675 900
F 0 "#PWR01" H 1675 750 50  0001 C CNN
F 1 "+5V" H 1675 1040 50  0000 C CNN
F 2 "" H 1675 900 50  0001 C CNN
F 3 "" H 1675 900 50  0001 C CNN
	1    1675 900 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5930DA9D
P 1825 900
F 0 "#PWR02" H 1825 650 50  0001 C CNN
F 1 "GND" H 1825 750 50  0000 C CNN
F 2 "" H 1825 900 50  0001 C CNN
F 3 "" H 1825 900 50  0001 C CNN
	1    1825 900 
	1    0    0    -1  
$EndComp
Text Label 1675 600  0    60   ~ 0
5V
Text Label 1825 600  0    60   ~ 0
GND
$Comp
L PWR_FLAG #FLG03
U 1 1 5930DBF2
P 1625 800
F 0 "#FLG03" H 1625 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1625 950 50  0000 C CNN
F 2 "" H 1625 800 50  0001 C CNN
F 3 "" H 1625 800 50  0001 C CNN
	1    1625 800 
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5930DC28
P 1875 800
F 0 "#FLG04" H 1875 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1875 950 50  0000 C CNN
F 2 "" H 1875 800 50  0001 C CNN
F 3 "" H 1875 800 50  0001 C CNN
	1    1875 800 
	0    1    1    0   
$EndComp
$Comp
L CONN_01X12 J1
U 1 1 59310BDB
P 750 3400
F 0 "J1" H 750 4050 50  0000 C CNN
F 1 "CONN_01X12" V 850 3400 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-12pol" H 750 3400 50  0001 C CNN
F 3 "" H 750 3400 50  0001 C CNN
	1    750  3400
	-1   0    0    1   
$EndComp
Text Label 950  3950 0    60   ~ 0
AN1
Text Label 950  3850 0    60   ~ 0
AN2
Text Label 950  3750 0    60   ~ 0
AN3
Text Label 950  3650 0    60   ~ 0
AN4
Text Label 950  3550 0    60   ~ 0
DI1
Text Label 950  3450 0    60   ~ 0
DI2
Text Label 950  3350 0    60   ~ 0
DI3
Text Label 950  3250 0    60   ~ 0
DI4
Text Label 950  2850 0    60   ~ 0
GND
$Comp
L +24V #PWR05
U 1 1 5931374E
P 700 700
F 0 "#PWR05" H 700 550 50  0001 C CNN
F 1 "+24V" H 700 840 50  0000 C CNN
F 2 "" H 700 700 50  0001 C CNN
F 3 "" H 700 700 50  0001 C CNN
	1    700  700 
	1    0    0    -1  
$EndComp
Text Label 700  875  3    60   ~ 0
24V
$Comp
L PWR_FLAG #FLG06
U 1 1 59313AA1
P 675 775
F 0 "#FLG06" H 675 850 50  0001 C CNN
F 1 "PWR_FLAG" H 675 925 50  0000 C CNN
F 2 "" H 675 775 50  0001 C CNN
F 3 "" H 675 775 50  0001 C CNN
	1    675  775 
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 593143EC
P 2950 675
F 0 "R1" V 3030 675 50  0000 C CNN
F 1 "10K" V 2950 675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2880 675 50  0001 C CNN
F 3 "" H 2950 675 50  0001 C CNN
	1    2950 675 
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59314519
P 3100 900
F 0 "R2" V 3180 900 50  0000 C CNN
F 1 "10K" V 3100 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3030 900 50  0001 C CNN
F 3 "" H 3100 900 50  0001 C CNN
	1    3100 900 
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5931459B
P 3350 675
F 0 "R3" V 3430 675 50  0000 C CNN
F 1 "10K" V 3350 675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3280 675 50  0001 C CNN
F 3 "" H 3350 675 50  0001 C CNN
	1    3350 675 
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 59314614
P 3500 900
F 0 "R4" V 3580 900 50  0000 C CNN
F 1 "10K" V 3500 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3430 900 50  0001 C CNN
F 3 "" H 3500 900 50  0001 C CNN
	1    3500 900 
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59314692
P 3750 675
F 0 "R5" V 3830 675 50  0000 C CNN
F 1 "10K" V 3750 675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3680 675 50  0001 C CNN
F 3 "" H 3750 675 50  0001 C CNN
	1    3750 675 
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5931470F
P 3900 900
F 0 "R6" V 3980 900 50  0000 C CNN
F 1 "10K" V 3900 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 900 50  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
	1    3900 900 
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 593147A1
P 4150 675
F 0 "R7" V 4230 675 50  0000 C CNN
F 1 "10K" V 4150 675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4080 675 50  0001 C CNN
F 3 "" H 4150 675 50  0001 C CNN
	1    4150 675 
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 59314824
P 4300 900
F 0 "R8" V 4380 900 50  0000 C CNN
F 1 "10K" V 4300 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4230 900 50  0001 C CNN
F 3 "" H 4300 900 50  0001 C CNN
	1    4300 900 
	1    0    0    -1  
$EndComp
Text Label 3625 1125 0    60   ~ 0
DGND
Text Label 2800 600  0    60   ~ 0
DI1
Text Label 3200 600  0    60   ~ 0
DI2
Text Label 3600 600  0    60   ~ 0
DI3
Text Label 4000 600  0    60   ~ 0
DI4
Text Label 4300 600  2    60   ~ 0
B4
Text Label 3900 600  2    60   ~ 0
B3
Text Label 3500 600  2    60   ~ 0
B2
Text Label 3100 600  2    60   ~ 0
B1
Text Label 3175 2775 0    60   ~ 0
DGND
Text Label 3225 1375 0    60   ~ 0
B1
Text Label 3225 1775 0    60   ~ 0
B2
Text Label 3225 2175 0    60   ~ 0
B3
Text Label 3225 2575 0    60   ~ 0
B4
$Comp
L R R9
U 1 1 5931A21D
P 4600 825
F 0 "R9" V 4680 825 50  0000 C CNN
F 1 "5K" V 4600 825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4530 825 50  0001 C CNN
F 3 "" H 4600 825 50  0001 C CNN
	1    4600 825 
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5931A2F8
P 4800 825
F 0 "R10" V 4880 825 50  0000 C CNN
F 1 "5K" V 4800 825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4730 825 50  0001 C CNN
F 3 "" H 4800 825 50  0001 C CNN
	1    4800 825 
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5931A383
P 5000 825
F 0 "R11" V 5080 825 50  0000 C CNN
F 1 "5K" V 5000 825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4930 825 50  0001 C CNN
F 3 "" H 5000 825 50  0001 C CNN
	1    5000 825 
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5931A411
P 5200 825
F 0 "R12" V 5280 825 50  0000 C CNN
F 1 "5K" V 5200 825 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 825 50  0001 C CNN
F 3 "" H 5200 825 50  0001 C CNN
	1    5200 825 
	1    0    0    -1  
$EndComp
Text Label 4825 600  0    60   ~ 0
3.3V
Text Label 4600 1050 0    60   ~ 0
D1
Text Label 4800 1050 0    60   ~ 0
D2
Text Label 5000 1050 0    60   ~ 0
D3
Text Label 5200 1050 0    60   ~ 0
D4
Text Label 4025 1375 0    60   ~ 0
D1
Text Label 4025 1775 0    60   ~ 0
D2
Text Label 4025 2175 0    60   ~ 0
D3
Text Label 4025 2575 0    60   ~ 0
D4
$Comp
L +3.3V #PWR07
U 1 1 5931E1F7
P 1375 700
F 0 "#PWR07" H 1375 550 50  0001 C CNN
F 1 "+3.3V" H 1375 840 50  0000 C CNN
F 2 "" H 1375 700 50  0001 C CNN
F 3 "" H 1375 700 50  0001 C CNN
	1    1375 700 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 5931E35E
P 1325 800
F 0 "#FLG08" H 1325 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1325 950 50  0000 C CNN
F 2 "" H 1325 800 50  0001 C CNN
F 3 "" H 1325 800 50  0001 C CNN
	1    1325 800 
	0    -1   -1   0   
$EndComp
Text Label 950  3050 0    60   ~ 0
24V
$Comp
L CONN_02X02 J2
U 1 1 5931420C
P 1325 1250
F 0 "J2" H 1325 1400 50  0000 C CNN
F 1 "LM2596" H 1325 1100 50  0000 C CNN
F 2 "LM2596:LM2596" H 1325 50  50  0001 C CNN
F 3 "" H 1325 50  50  0001 C CNN
	1    1325 1250
	1    0    0    -1  
$EndComp
Text Label 1700 1200 0    60   ~ 0
5V
$Comp
L PWR_FLAG #FLG09
U 1 1 593179DE
P 925 800
F 0 "#FLG09" H 925 875 50  0001 C CNN
F 1 "PWR_FLAG" H 925 950 50  0000 C CNN
F 2 "" H 925 800 50  0001 C CNN
F 3 "" H 925 800 50  0001 C CNN
	1    925  800 
	0    1    1    0   
$EndComp
Text Notes 600  2700 0    60   ~ 0
POWER- 24V DC, \nBUCK-LM2596-5V-2A,\nLDO- AMS117-3.3V-1000mA\n
Text Notes 550  4300 0    60   ~ 0
INPUTS- SCREW CONNECTORS-12PIN\n
Text Notes 4375 1975 0    60   ~ 0
DIGITAL INPUT\n
Text Notes 3050 4150 0    60   ~ 0
ANALOG INPUT BREAKOUT\n\n
Text Notes 7050 4025 0    60   ~ 0
DIGITAL OUTPUT\n
Text Label 1550 1450 0    60   ~ 0
GND
Text Label 975  1200 0    60   ~ 0
24V
Text Label 1375 850  3    60   ~ 0
3.3V
Text Label 7275 625  0    60   ~ 0
5V
Text Label 4100 2375 0    60   ~ 0
GND
Text Label 5725 2650 0    60   ~ 0
DO1
Text Label 5725 2550 0    60   ~ 0
DO2
Text Label 5725 2450 0    60   ~ 0
DO3
Text Label 5725 2350 0    60   ~ 0
DO4
NoConn ~ 5850 1950
NoConn ~ 5850 2050
NoConn ~ 5850 2150
NoConn ~ 5850 2250
Text Label 6750 2350 0    60   ~ 0
O4
Text Label 6750 2450 0    60   ~ 0
O3
Text Label 6750 2550 0    60   ~ 0
O2
Text Label 6750 2650 0    60   ~ 0
O1
NoConn ~ 6650 2250
NoConn ~ 6650 2150
NoConn ~ 6650 2050
NoConn ~ 6650 1950
Text Label 625  1725 0    60   ~ 0
5V
Text Label 950  2950 0    60   ~ 0
24V
$Comp
L CP1_Small C1
U 1 1 59386F03
P 600 1975
F 0 "C1" H 610 2045 50  0000 L CNN
F 1 "22u" H 610 1895 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 600 1975 50  0001 C CNN
F 3 "" H 600 1975 50  0001 C CNN
	1    600  1975
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C2
U 1 1 593872A7
P 2300 1900
F 0 "C2" H 2310 1970 50  0000 L CNN
F 1 "22u" H 2310 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2300 1900 50  0001 C CNN
F 3 "" H 2300 1900 50  0001 C CNN
	1    2300 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J4
U 1 1 59387CC3
P 3100 3350
F 0 "J4" H 3100 3600 50  0000 C CNN
F 1 "ANALOG_BK" V 3200 3350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 3100 3350 50  0001 C CNN
F 3 "" H 3100 3350 50  0001 C CNN
	1    3100 3350
	-1   0    0    1   
$EndComp
Text Label 3400 3200 0    60   ~ 0
AN4
Text Label 3400 3300 0    60   ~ 0
AN3
Text Label 3400 3400 0    60   ~ 0
AN2
Text Label 3400 3500 0    60   ~ 0
AN1
Wire Wire Line
	6250 2950 6250 3000
Wire Wire Line
	6250 3000 6400 3000
Wire Wire Line
	6650 2750 6750 2750
Wire Wire Line
	6750 2750 6750 3000
Wire Wire Line
	6750 3000 6700 3000
Wire Wire Line
	7150 625  7150 825 
Wire Wire Line
	7500 625  7500 675 
Wire Wire Line
	7150 1125 7150 1325
Wire Wire Line
	7150 1325 7500 1325
Wire Wire Line
	7500 1325 7500 1275
Wire Wire Line
	7150 1625 7150 1425
Wire Wire Line
	7150 1425 7500 1425
Wire Wire Line
	7500 1425 7500 1475
Wire Wire Line
	7150 1925 7150 2125
Wire Wire Line
	7150 2125 7500 2125
Wire Wire Line
	7500 2125 7500 2075
Wire Wire Line
	7150 2475 7150 2275
Wire Wire Line
	7150 2275 7500 2275
Wire Wire Line
	7500 2275 7500 2325
Wire Wire Line
	7150 2775 7150 2975
Wire Wire Line
	7150 2975 7500 2975
Wire Wire Line
	7500 2975 7500 2925
Wire Wire Line
	7150 3275 7150 3075
Wire Wire Line
	7150 3075 7500 3075
Wire Wire Line
	7500 3075 7500 3125
Wire Wire Line
	7150 3575 7150 3775
Wire Wire Line
	7150 3775 7500 3775
Wire Wire Line
	7500 3775 7500 3725
Wire Wire Line
	7800 675  7800 575 
Wire Wire Line
	8000 675  8000 575 
Wire Wire Line
	7900 1275 7900 1375
Wire Wire Line
	7800 1475 7800 1375
Wire Wire Line
	8000 1475 8000 1375
Wire Wire Line
	7900 2075 7900 2175
Wire Wire Line
	7800 2325 7800 2225
Wire Wire Line
	8000 2325 8000 2225
Wire Wire Line
	7900 2925 7900 3025
Wire Wire Line
	7800 3125 7800 3025
Wire Wire Line
	8000 3125 8000 3025
Wire Wire Line
	7900 3725 7900 3825
Wire Wire Line
	9075 1550 8975 1550
Wire Wire Line
	9075 1650 8975 1650
Wire Wire Line
	9075 1750 8975 1750
Wire Wire Line
	9075 1850 8975 1850
Wire Wire Line
	9075 1950 8975 1950
Wire Wire Line
	9075 2050 8975 2050
Wire Wire Line
	9075 2150 8975 2150
Wire Wire Line
	9075 2250 8975 2250
Wire Wire Line
	9075 2350 8975 2350
Wire Wire Line
	9075 2450 8975 2450
Wire Wire Line
	9075 2550 8975 2550
Wire Wire Line
	9075 2650 8975 2650
Wire Wire Line
	1675 900  1675 550 
Wire Wire Line
	1825 900  1825 550 
Wire Wire Line
	1675 800  1625 800 
Connection ~ 1675 800 
Wire Wire Line
	1875 800  1825 800 
Connection ~ 1825 800 
Wire Wire Line
	950  3950 1075 3950
Wire Wire Line
	950  3850 1075 3850
Wire Wire Line
	950  3750 1075 3750
Wire Wire Line
	950  3650 1075 3650
Wire Wire Line
	950  3550 1075 3550
Wire Wire Line
	950  3450 1075 3450
Wire Wire Line
	950  3350 1075 3350
Wire Wire Line
	950  3250 1075 3250
Wire Wire Line
	950  3150 1075 3150
Wire Wire Line
	950  3050 1075 3050
Wire Wire Line
	950  2950 1075 2950
Wire Wire Line
	950  2850 1075 2850
Wire Wire Line
	700  700  700  875 
Wire Wire Line
	700  775  675  775 
Connection ~ 700  775 
Wire Wire Line
	3100 1050 3100 1125
Wire Wire Line
	3100 1125 4300 1125
Wire Wire Line
	4300 1125 4300 1050
Wire Wire Line
	3900 1050 3900 1125
Connection ~ 3900 1125
Wire Wire Line
	3500 1050 3500 1125
Connection ~ 3500 1125
Wire Wire Line
	3100 600  3100 750 
Wire Wire Line
	3500 600  3500 750 
Wire Wire Line
	3900 600  3900 750 
Wire Wire Line
	4300 600  4300 750 
Wire Wire Line
	2800 675  2800 600 
Wire Wire Line
	3200 675  3200 600 
Wire Wire Line
	3600 675  3600 600 
Wire Wire Line
	4000 675  4000 600 
Connection ~ 3100 675 
Connection ~ 3500 675 
Connection ~ 3900 675 
Connection ~ 4300 675 
Wire Wire Line
	3350 1575 3175 1575
Wire Wire Line
	3175 1575 3175 2775
Wire Wire Line
	3175 2775 3350 2775
Wire Wire Line
	3350 1975 3175 1975
Connection ~ 3175 1975
Wire Wire Line
	3350 2375 3175 2375
Connection ~ 3175 2375
Wire Wire Line
	3350 1375 3225 1375
Wire Wire Line
	3350 1775 3225 1775
Wire Wire Line
	3350 2175 3225 2175
Wire Wire Line
	3350 2575 3225 2575
Wire Wire Line
	4600 675  4600 600 
Wire Wire Line
	4600 600  5200 600 
Wire Wire Line
	5200 600  5200 675 
Wire Wire Line
	5000 600  5000 675 
Connection ~ 5000 600 
Wire Wire Line
	4800 600  4800 675 
Connection ~ 4800 600 
Wire Wire Line
	4600 975  4600 1050
Wire Wire Line
	4800 975  4800 1050
Wire Wire Line
	5000 975  5000 1050
Wire Wire Line
	5200 975  5200 1050
Wire Wire Line
	3950 1375 4025 1375
Wire Wire Line
	3950 1575 4100 1575
Wire Wire Line
	4100 1575 4100 2775
Wire Wire Line
	4100 2375 3950 2375
Wire Wire Line
	3950 1975 4100 1975
Connection ~ 4100 1975
Wire Wire Line
	4100 2775 3950 2775
Connection ~ 4100 2375
Wire Wire Line
	3950 2575 4025 2575
Wire Wire Line
	3950 2175 4025 2175
Wire Wire Line
	3950 1775 4025 1775
Wire Wire Line
	1375 700  1375 900 
Wire Wire Line
	1325 800  1375 800 
Connection ~ 1375 800 
Wire Wire Line
	1575 1300 1650 1300
Wire Wire Line
	1575 1200 1700 1200
Wire Wire Line
	925  800  925  750 
Wire Wire Line
	925  750  825  750 
Wire Notes Line
	2525 2900 5350 2900
Wire Notes Line
	5375 4150 9625 4150
Wire Notes Line
	9625 4150 9625 500 
Wire Notes Line
	2525 2550 2525 2725
Wire Notes Line
	2525 2725 475  2725
Wire Wire Line
	7500 625  7150 625 
Wire Wire Line
	1075 1200 975  1200
Wire Wire Line
	1075 1300 1025 1300
Wire Wire Line
	1025 1300 1025 1450
Wire Wire Line
	1025 1450 1650 1450
Wire Wire Line
	1650 1450 1650 1300
Wire Wire Line
	5850 2650 5725 2650
Wire Wire Line
	5850 2550 5725 2550
Wire Wire Line
	5850 2450 5725 2450
Wire Wire Line
	5850 2350 5725 2350
Wire Wire Line
	6650 2650 6750 2650
Wire Wire Line
	6650 2550 6750 2550
Wire Wire Line
	6650 2450 6750 2450
Wire Wire Line
	6650 2350 6750 2350
Wire Notes Line
	5375 4150 5375 475 
Wire Notes Line
	2525 4450 475  4450
Wire Notes Line
	2525 4100 5375 4100
Wire Notes Line
	5375 4100 5375 4075
Wire Wire Line
	3300 3200 3400 3200
Wire Wire Line
	3300 3300 3400 3300
Wire Wire Line
	3300 3400 3400 3400
Wire Wire Line
	3300 3500 3400 3500
$Comp
L CONN_02X20 J6
U 1 1 5938AFB3
P 10325 1950
F 0 "J6" H 10325 3000 50  0000 C CNN
F 1 "CONN_02X20" V 10325 1950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20_Pitch2.54mm" H 10325 1000 50  0001 C CNN
F 3 "" H 10325 1000 50  0001 C CNN
	1    10325 1950
	1    0    0    1   
$EndComp
Text Label 10750 1100 2    60   ~ 0
D1
Text Label 10750 1000 2    60   ~ 0
D2
Text Label 9875 2200 0    60   ~ 0
D3
Text Label 10775 2200 2    60   ~ 0
D4
Text Label 10775 2100 2    60   ~ 0
DO1
Wire Wire Line
	10575 1100 10750 1100
Wire Wire Line
	10575 1000 10750 1000
Wire Wire Line
	9875 2200 10075 2200
Wire Wire Line
	10575 2200 10775 2200
Wire Wire Line
	10575 2100 10775 2100
Wire Wire Line
	10575 1900 10775 1900
Text Label 10775 1900 2    60   ~ 0
DO2
Text Label 9875 1100 0    60   ~ 0
DO3
Wire Wire Line
	10075 2300 9875 2300
Text Label 9875 2300 0    60   ~ 0
DO4
Wire Wire Line
	9875 1100 10075 1100
Wire Wire Line
	10075 2900 9875 2900
Text Label 9875 2900 0    60   ~ 0
3.3V
Wire Wire Line
	10075 2100 9875 2100
Text Label 9875 2100 0    60   ~ 0
3.3V
Wire Wire Line
	10575 2900 10775 2900
Text Label 10775 2900 2    60   ~ 0
5V
Wire Wire Line
	10575 2800 10775 2800
Text Label 10775 2800 2    60   ~ 0
5V
Wire Wire Line
	10575 2700 10775 2700
Text Label 10775 2700 2    60   ~ 0
GND
Wire Wire Line
	10075 2500 9875 2500
Text Label 9875 2500 0    60   ~ 0
GND
Wire Wire Line
	10575 2300 10775 2300
Text Label 10775 2300 2    60   ~ 0
GND
Wire Wire Line
	10575 2000 10775 2000
Text Label 10775 2000 2    60   ~ 0
GND
Wire Wire Line
	10075 1700 9875 1700
Text Label 9875 1700 0    60   ~ 0
GND
Wire Wire Line
	10575 1500 10750 1500
Text Label 10750 1500 2    60   ~ 0
GND
Wire Wire Line
	10575 1300 10750 1300
Text Label 10750 1300 2    60   ~ 0
GND
Wire Wire Line
	10075 1000 9875 1000
Text Label 9875 1000 0    60   ~ 0
GND
Wire Wire Line
	10075 1800 9875 1800
Text Label 9875 1800 0    60   ~ 0
SCLK
Wire Wire Line
	10075 1900 9875 1900
Text Label 9875 1900 0    60   ~ 0
MISO
Wire Wire Line
	10075 2000 9875 2000
Text Label 9875 2000 0    60   ~ 0
MOSI
Wire Wire Line
	10575 1700 10750 1700
Text Label 10750 1700 2    60   ~ 0
CS
NoConn ~ 10575 2600
NoConn ~ 10575 2500
NoConn ~ 10575 2400
NoConn ~ 10075 2800
NoConn ~ 10075 2700
NoConn ~ 10075 2600
NoConn ~ 10075 2400
NoConn ~ 10575 1800
NoConn ~ 10575 1600
NoConn ~ 10575 1400
NoConn ~ 10075 1600
NoConn ~ 10075 1500
NoConn ~ 10075 1400
NoConn ~ 10075 1300
NoConn ~ 10075 1200
NoConn ~ 10575 1200
NoConn ~ 9875 2000
NoConn ~ 9875 1900
NoConn ~ 9875 1800
NoConn ~ 10750 1700
Wire Notes Line
	2525 4450 2525 475 
Wire Notes Line
	9650 3300 11200 3300
Wire Notes Line
	11200 3300 11200 3325
$Comp
L PC817 U1
U 1 1 59391423
P 3650 1475
F 0 "U1" H 3450 1675 50  0000 L CNN
F 1 "PC817" H 3650 1675 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 3450 1275 50  0001 L CIN
F 3 "" H 3650 1475 50  0001 L CNN
	1    3650 1475
	1    0    0    -1  
$EndComp
$Comp
L PC817 U3
U 1 1 59391584
P 3650 1875
F 0 "U3" H 3450 2075 50  0000 L CNN
F 1 "PC817" H 3650 2075 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 3450 1675 50  0001 L CIN
F 3 "" H 3650 1875 50  0001 L CNN
	1    3650 1875
	1    0    0    -1  
$EndComp
$Comp
L PC817 U4
U 1 1 5939167D
P 3650 2275
F 0 "U4" H 3450 2475 50  0000 L CNN
F 1 "PC817" H 3650 2475 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 3450 2075 50  0001 L CIN
F 3 "" H 3650 2275 50  0001 L CNN
	1    3650 2275
	1    0    0    -1  
$EndComp
$Comp
L PC817 U5
U 1 1 593916DC
P 3650 2675
F 0 "U5" H 3450 2875 50  0000 L CNN
F 1 "PC817" H 3650 2875 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 3450 2475 50  0001 L CIN
F 3 "" H 3650 2675 50  0001 L CNN
	1    3650 2675
	1    0    0    -1  
$EndComp
Text Label 825  650  0    60   ~ 0
DGND
Wire Wire Line
	825  875  825  650 
Connection ~ 825  750 
$Comp
L GNDD #PWR010
U 1 1 59392008
P 825 875
F 0 "#PWR010" H 825 625 50  0001 C CNN
F 1 "GNDD" H 825 725 50  0000 C CNN
F 2 "" H 825 875 50  0001 C CNN
F 3 "" H 825 875 50  0001 C CNN
	1    825  875 
	1    0    0    -1  
$EndComp
Text Label 950  3150 0    60   ~ 0
DGND
$Comp
L GNDA #PWR011
U 1 1 59395D32
P 2275 800
F 0 "#PWR011" H 2275 550 50  0001 C CNN
F 1 "GNDA" H 2275 650 50  0000 C CNN
F 2 "" H 2275 800 50  0001 C CNN
F 3 "" H 2275 800 50  0001 C CNN
	1    2275 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 800  2275 600 
Text Label 2275 600  3    60   ~ 0
AGND
$Comp
L PWR_FLAG #FLG012
U 1 1 59395F1D
P 2300 725
F 0 "#FLG012" H 2300 800 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 875 50  0000 C CNN
F 2 "" H 2300 725 50  0001 C CNN
F 3 "" H 2300 725 50  0001 C CNN
	1    2300 725 
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 725  2275 725 
Connection ~ 2275 725 
$Comp
L AMS1117 U6
U 1 1 593A3E0E
P 1450 1725
F 0 "U6" H 1050 1600 50  0000 C CNN
F 1 "AMS1117" H 1750 1875 50  0000 C CNN
F 2 "sot-223-smd:SOT-223-3Lead_TabPin2" H 1450 1725 60  0001 C CNN
F 3 "" H 1450 1725 60  0001 C CNN
	1    1450 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1725 600  1725
Wire Wire Line
	600  1725 600  1875
Wire Wire Line
	600  2075 600  2225
Wire Wire Line
	2250 1725 2300 1725
Wire Wire Line
	2300 1725 2300 1800
Wire Wire Line
	2300 2225 2300 2000
Wire Wire Line
	600  2225 2300 2225
Connection ~ 1450 2225
Text Label 1450 2225 0    60   ~ 0
GND
Text Label 2275 1725 0    60   ~ 0
3.3V
$EndSCHEMATC