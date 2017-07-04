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
LIBS:top-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Top Board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS1118I U1
U 1 1 593F7057
P 3250 1975
F 0 "U1" H 2650 2425 50  0000 L CNN
F 1 "ADS1018" H 3500 2425 50  0000 L CNN
F 2 "ADS1018:ADS1018" H 3200 1925 50  0001 C CNN
F 3 "" H 2350 2375 50  0001 C CNN
	1    3250 1975
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 J1
U 1 1 593F70E9
P 650 1750
F 0 "J1" H 650 2050 50  0000 C CNN
F 1 "ANALOG BK" V 650 1750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05_Pitch2.00mm" H 650 1750 50  0001 C CNN
F 3 "" H 650 1750 50  0001 C CNN
	1    650  1750
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X20 J2
U 1 1 593F7136
P 5075 1725
F 0 "J2" H 5075 2775 50  0000 C CNN
F 1 "PI_BK" V 5075 1725 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20_Pitch2.54mm" H 5075 775 50  0001 C CNN
F 3 "" H 5075 775 50  0001 C CNN
	1    5075 1725
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 593F7175
P 2225 750
F 0 "R1" V 2305 750 50  0000 C CNN
F 1 "10K" V 2225 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2155 750 50  0001 C CNN
F 3 "" H 2225 750 50  0001 C CNN
	1    2225 750 
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 593F71B4
P 2400 1050
F 0 "R2" V 2480 1050 50  0000 C CNN
F 1 "5K" V 2400 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2330 1050 50  0001 C CNN
F 3 "" H 2400 1050 50  0001 C CNN
	1    2400 1050
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 593F71D3
P 2750 750
F 0 "R3" V 2830 750 50  0000 C CNN
F 1 "10K" V 2750 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 750 50  0001 C CNN
F 3 "" H 2750 750 50  0001 C CNN
	1    2750 750 
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 593F7204
P 2925 1050
F 0 "R4" V 3005 1050 50  0000 C CNN
F 1 "5K" V 2925 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2855 1050 50  0001 C CNN
F 3 "" H 2925 1050 50  0001 C CNN
	1    2925 1050
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 593F7243
P 3250 750
F 0 "R5" V 3330 750 50  0000 C CNN
F 1 "10K" V 3250 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 750 50  0001 C CNN
F 3 "" H 3250 750 50  0001 C CNN
	1    3250 750 
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 593F727E
P 3425 1050
F 0 "R6" V 3505 1050 50  0000 C CNN
F 1 "5K" V 3425 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3355 1050 50  0001 C CNN
F 3 "" H 3425 1050 50  0001 C CNN
	1    3425 1050
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 593F72C7
P 3725 750
F 0 "R7" V 3805 750 50  0000 C CNN
F 1 "10K" V 3725 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3655 750 50  0001 C CNN
F 3 "" H 3725 750 50  0001 C CNN
	1    3725 750 
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 593F7326
P 3900 1050
F 0 "R8" V 3980 1050 50  0000 C CNN
F 1 "5K" V 3900 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 1050 50  0001 C CNN
F 3 "" H 3900 1050 50  0001 C CNN
	1    3900 1050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 593F7414
P 575 700
F 0 "#PWR01" H 575 550 50  0001 C CNN
F 1 "+3.3V" H 575 840 50  0000 C CNN
F 2 "" H 575 700 50  0001 C CNN
F 3 "" H 575 700 50  0001 C CNN
	1    575  700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 593F743E
P 1225 800
F 0 "#PWR02" H 1225 550 50  0001 C CNN
F 1 "GND" H 1225 650 50  0000 C CNN
F 2 "" H 1225 800 50  0001 C CNN
F 3 "" H 1225 800 50  0001 C CNN
	1    1225 800 
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR03
U 1 1 593F7468
P 1575 800
F 0 "#PWR03" H 1575 550 50  0001 C CNN
F 1 "GNDA" H 1575 650 50  0000 C CNN
F 2 "" H 1575 800 50  0001 C CNN
F 3 "" H 1575 800 50  0001 C CNN
	1    1575 800 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 593F7545
P 900 675
F 0 "#PWR04" H 900 525 50  0001 C CNN
F 1 "+5V" H 900 815 50  0000 C CNN
F 2 "" H 900 675 50  0001 C CNN
F 3 "" H 900 675 50  0001 C CNN
	1    900  675 
	1    0    0    -1  
$EndComp
Text Label 575  850  1    60   ~ 0
3.3V
Text Label 900  825  1    60   ~ 0
5V
Text Label 1225 600  3    60   ~ 0
GND
Text Label 1575 600  3    60   ~ 0
AGND
$Comp
L PWR_FLAG #FLG05
U 1 1 593F7851
P 600 750
F 0 "#FLG05" H 600 825 50  0001 C CNN
F 1 "PWR_FLAG" H 600 900 50  0000 C CNN
F 2 "" H 600 750 50  0001 C CNN
F 3 "" H 600 750 50  0001 C CNN
	1    600  750 
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 593F7884
P 925 725
F 0 "#FLG06" H 925 800 50  0001 C CNN
F 1 "PWR_FLAG" H 925 875 50  0000 C CNN
F 2 "" H 925 725 50  0001 C CNN
F 3 "" H 925 725 50  0001 C CNN
	1    925  725 
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 593F78B0
P 1275 700
F 0 "#FLG07" H 1275 775 50  0001 C CNN
F 1 "PWR_FLAG" H 1275 850 50  0000 C CNN
F 2 "" H 1275 700 50  0001 C CNN
F 3 "" H 1275 700 50  0001 C CNN
	1    1275 700 
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 593F78E7
P 1625 725
F 0 "#FLG08" H 1625 800 50  0001 C CNN
F 1 "PWR_FLAG" H 1625 875 50  0000 C CNN
F 2 "" H 1625 725 50  0001 C CNN
F 3 "" H 1625 725 50  0001 C CNN
	1    1625 725 
	0    1    1    0   
$EndComp
Text Label 975  1550 0    60   ~ 0
AN1
Text Label 975  1650 0    60   ~ 0
AN2
Text Label 975  1750 0    60   ~ 0
AN3
Text Label 975  1850 0    60   ~ 0
AN4
Text Label 975  1950 0    60   ~ 0
AGND
$Comp
L C C1
U 1 1 593F7FC7
P 2875 2525
F 0 "C1" H 2900 2625 50  0000 L CNN
F 1 "100n" H 2900 2425 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2913 2375 50  0001 C CNN
F 3 "" H 2875 2525 50  0001 C CNN
	1    2875 2525
	0    1    1    0   
$EndComp
Text Label 2400 1775 0    60   ~ 0
A1
Text Label 2400 1875 0    60   ~ 0
A2
Text Label 2400 2075 0    60   ~ 0
A3
Text Label 2400 2175 0    60   ~ 0
A4
Text Label 3250 1350 0    60   ~ 0
3.3V
Text Label 3250 2600 0    60   ~ 0
AGND
Text Label 4050 1675 0    60   ~ 0
SCLK
Text Label 4050 1775 0    60   ~ 0
MOSI
Text Label 4050 1875 0    60   ~ 0
MISO
Text Label 4050 1975 0    60   ~ 0
CS
Text Label 3075 1200 0    60   ~ 0
AGND
Text Label 2075 625  0    60   ~ 0
AN1
Text Label 2600 625  0    60   ~ 0
AN2
Text Label 3100 625  0    60   ~ 0
AN3
Text Label 3575 625  0    60   ~ 0
AN4
Text Label 2400 750  0    60   ~ 0
A1
Text Label 2925 750  0    60   ~ 0
A2
Text Label 3425 750  0    60   ~ 0
A3
Text Label 3900 750  0    60   ~ 0
A4
Text Label 4650 2675 0    60   ~ 0
3.3V
Text Label 5500 2575 2    60   ~ 0
5V
Text Label 5500 2675 2    60   ~ 0
5V
Text Label 5500 2475 2    60   ~ 0
GND
Text Label 4650 2275 0    60   ~ 0
GND
Text Label 5500 2075 2    60   ~ 0
GND
Text Label 5500 1775 2    60   ~ 0
GND
Text Label 4650 1475 0    60   ~ 0
GND
Text Label 5500 1275 2    60   ~ 0
GND
Text Label 5500 1075 2    60   ~ 0
GND
Text Label 4650 775  0    60   ~ 0
GND
Text Label 4650 1775 0    60   ~ 0
MOSI
Text Label 4650 1675 0    60   ~ 0
MISO
Text Label 4650 1575 0    60   ~ 0
SCLK
Text Label 5500 1475 2    60   ~ 0
CS
NoConn ~ 5325 775 
NoConn ~ 5325 875 
NoConn ~ 5325 1375
NoConn ~ 5325 1875
NoConn ~ 5325 1975
NoConn ~ 4825 2075
NoConn ~ 4825 1975
NoConn ~ 4825 1375
Text Notes 575  1275 0    60   ~ 0
POWER- 3.3V,5V,GND,AGND\n
Text Notes 500  2225 0    60   ~ 0
ANALOG BREAKOUT\n
Text Notes 2775 2850 0    60   ~ 0
ADS1018 CIRCUITRY\n
Text Notes 4750 2925 0    60   ~ 0
PI BREAKOUT
NoConn ~ 4825 875 
Text Label 4650 2575 0    60   ~ 0
SDA
Text Label 4650 2475 0    60   ~ 0
SCL
Text Label 4650 2375 0    60   ~ 0
7
Text Label 4650 1275 0    60   ~ 0
29
Text Label 4650 1175 0    60   ~ 0
31
Text Label 4650 1075 0    60   ~ 0
33
Text Label 4650 975  0    60   ~ 0
35
Text Label 5500 1575 2    60   ~ 0
CS0
Text Label 5500 2175 2    60   ~ 0
12
Text Label 5500 2275 2    60   ~ 0
10
Text Label 5500 2375 2    60   ~ 0
8
Text Label 5500 975  2    60   ~ 0
36
Text Label 5500 1175 2    60   ~ 0
32
Text Notes 6050 2800 0    60   ~ 0
PI GPIO BREAKOUT\n
Text Label 6175 2575 0    60   ~ 0
GND
Text Label 6175 2475 0    60   ~ 0
3.3V
Text Label 6175 2375 0    60   ~ 0
5V
Text Label 6175 2275 0    60   ~ 0
SDA
Text Label 6175 2175 0    60   ~ 0
SCL
Text Label 6175 2075 0    60   ~ 0
7
Text Label 6175 1975 0    60   ~ 0
8
Text Label 6175 1875 0    60   ~ 0
10
Text Label 6175 1775 0    60   ~ 0
12
Text Label 6175 1675 0    60   ~ 0
MOSI
Text Label 6175 1575 0    60   ~ 0
MISO
Text Label 6175 1475 0    60   ~ 0
SCLK
Text Label 6175 1375 0    60   ~ 0
CS0
Text Label 6175 1275 0    60   ~ 0
29
Text Label 6175 1175 0    60   ~ 0
31
Text Label 6175 1075 0    60   ~ 0
32
Text Label 6175 975  0    60   ~ 0
33
Text Label 6175 875  0    60   ~ 0
35
Text Label 6175 775  0    60   ~ 0
36
$Comp
L R R10
U 1 1 59411C7F
P 5900 2025
F 0 "R10" V 5980 2025 50  0000 C CNN
F 1 "10k" V 5900 2025 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5830 2025 50  0001 C CNN
F 3 "" H 5900 2025 50  0001 C CNN
	1    5900 2025
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59411D0C
P 5725 2025
F 0 "R9" V 5805 2025 50  0000 C CNN
F 1 "10k" V 5725 2025 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5655 2025 50  0001 C CNN
F 3 "" H 5725 2025 50  0001 C CNN
	1    5725 2025
	1    0    0    -1  
$EndComp
Text Label 5725 1825 0    60   ~ 0
3.3V
Text Label 4650 1875 0    60   ~ 0
3.3V
$Comp
L CONN_01X07 J4
U 1 1 594278CC
P 925 2475
F 0 "J4" H 925 2875 50  0000 C CNN
F 1 "ETHERNET BK" V 1025 2600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x07_Pitch2.54mm" H 925 2475 50  0001 C CNN
F 3 "" H 925 2475 50  0001 C CNN
	1    925  2475
	0    -1   -1   0   
$EndComp
Text Label 625  2850 1    60   ~ 0
3.3V
Text Label 725  2850 1    60   ~ 0
GND
Text Label 825  2850 1    60   ~ 0
MOSI
Text Label 925  2850 1    60   ~ 0
MISO
Text Label 1025 2850 1    60   ~ 0
SCLK
Text Label 1125 2850 1    60   ~ 0
CS0
Text Label 1225 2850 1    60   ~ 0
INT
Text Notes 575  2975 0    60   ~ 0
ETHERNET BK\n
Text Label 1375 1675 0    60   ~ 0
GND
Text Notes 1500 2275 0    60   ~ 0
JUMPER\n
$Comp
L CONN_01X02 J5
U 1 1 5947D012
P 1825 1725
F 0 "J5" H 1825 1875 50  0000 C CNN
F 1 "JUMPER" V 1925 1725 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 1825 1725 50  0001 C CNN
F 3 "" H 1825 1725 50  0001 C CNN
	1    1825 1725
	1    0    0    -1  
$EndComp
Text Label 1375 1775 0    60   ~ 0
AGND
Wire Wire Line
	575  700  575  850 
Wire Wire Line
	900  675  900  825 
Wire Wire Line
	1225 600  1225 800 
Wire Wire Line
	1575 600  1575 800 
Wire Wire Line
	600  750  575  750 
Connection ~ 575  750 
Wire Wire Line
	925  725  900  725 
Connection ~ 900  725 
Wire Wire Line
	1275 700  1225 700 
Connection ~ 1225 700 
Wire Wire Line
	1625 725  1575 725 
Connection ~ 1575 725 
Wire Wire Line
	850  1550 975  1550
Wire Wire Line
	850  1650 975  1650
Wire Wire Line
	850  1750 975  1750
Wire Wire Line
	850  1850 975  1850
Wire Wire Line
	850  1950 975  1950
Wire Wire Line
	2550 1775 2400 1775
Wire Wire Line
	2550 1875 2400 1875
Wire Wire Line
	2550 2075 2400 2075
Wire Wire Line
	2550 2175 2400 2175
Wire Wire Line
	3250 1350 3250 1475
Wire Wire Line
	3250 2475 3250 2600
Wire Wire Line
	3025 2525 3250 2525
Connection ~ 3250 2525
Wire Wire Line
	2725 2525 2200 2525
Wire Wire Line
	2200 2525 2200 1425
Wire Wire Line
	2200 1425 3250 1425
Connection ~ 3250 1425
Wire Wire Line
	3950 1675 4050 1675
Wire Wire Line
	3950 1775 4050 1775
Wire Wire Line
	3950 1875 4050 1875
Wire Wire Line
	3950 1975 4050 1975
Wire Wire Line
	2375 750  2400 750 
Wire Wire Line
	2400 750  2400 900 
Wire Wire Line
	2900 750  2925 750 
Wire Wire Line
	2925 750  2925 900 
Wire Wire Line
	3400 750  3425 750 
Wire Wire Line
	3425 750  3425 900 
Wire Wire Line
	3875 750  3900 750 
Wire Wire Line
	3900 750  3900 900 
Wire Wire Line
	2075 750  2075 625 
Wire Wire Line
	2600 750  2600 625 
Wire Wire Line
	3100 750  3100 625 
Wire Wire Line
	3575 750  3575 625 
Wire Wire Line
	2400 1200 3900 1200
Connection ~ 2925 1200
Connection ~ 3425 1200
Wire Wire Line
	4825 2675 4650 2675
Wire Wire Line
	5325 2575 5500 2575
Wire Wire Line
	5325 2675 5500 2675
Wire Wire Line
	5325 2475 5500 2475
Wire Wire Line
	4825 2275 4650 2275
Wire Wire Line
	5325 2075 5500 2075
Wire Wire Line
	5325 1775 5500 1775
Wire Wire Line
	4825 1475 4650 1475
Wire Wire Line
	5325 1275 5500 1275
Wire Wire Line
	5325 1075 5500 1075
Wire Wire Line
	4825 775  4650 775 
Wire Wire Line
	4825 1775 4650 1775
Wire Wire Line
	4825 1675 4650 1675
Wire Wire Line
	4825 1575 4650 1575
Wire Wire Line
	5325 1475 5500 1475
Wire Notes Line
	475  2300 2050 2300
Wire Notes Line
	475  1350 2050 1350
Wire Notes Line
	4425 475  4425 2975
Wire Notes Line
	5600 2975 5600 475 
Wire Wire Line
	4825 2575 4650 2575
Wire Wire Line
	4650 2475 4825 2475
Wire Wire Line
	4825 2375 4650 2375
Wire Wire Line
	4825 2175 4650 2175
Wire Wire Line
	4825 1275 4650 1275
Wire Wire Line
	4825 1175 4650 1175
Wire Wire Line
	4825 1075 4650 1075
Wire Wire Line
	4825 975  4650 975 
Wire Wire Line
	5325 1575 5500 1575
Wire Wire Line
	5325 2175 5500 2175
Wire Wire Line
	5325 2275 5500 2275
Wire Wire Line
	5325 2375 5500 2375
Wire Wire Line
	5325 975  5500 975 
Wire Wire Line
	5325 1175 5500 1175
Wire Wire Line
	6400 2575 6175 2575
Wire Wire Line
	6400 2475 6175 2475
Wire Wire Line
	6400 2375 6175 2375
Wire Wire Line
	5725 2275 6400 2275
Wire Wire Line
	5900 2175 6400 2175
Wire Wire Line
	6175 775  6400 775 
Wire Wire Line
	6175 875  6400 875 
Wire Wire Line
	6175 975  6400 975 
Wire Wire Line
	6175 1075 6400 1075
Wire Wire Line
	6175 1175 6400 1175
Wire Wire Line
	6175 1275 6400 1275
Wire Wire Line
	6175 1375 6400 1375
Wire Wire Line
	6175 1475 6400 1475
Wire Wire Line
	6175 1575 6400 1575
Wire Wire Line
	6175 1675 6400 1675
Wire Wire Line
	6175 1875 6400 1875
Wire Wire Line
	6175 1975 6400 1975
Wire Wire Line
	6400 2075 6175 2075
Wire Wire Line
	5725 2175 5725 2275
Wire Wire Line
	5725 1875 5725 1825
Wire Wire Line
	5725 1825 5900 1825
Wire Wire Line
	5900 1825 5900 1875
Wire Wire Line
	4825 1875 4650 1875
Wire Wire Line
	625  2675 625  2850
Wire Wire Line
	725  2675 725  2850
Wire Wire Line
	825  2675 825  2850
Wire Wire Line
	925  2675 925  2850
Wire Wire Line
	1025 2675 1025 2850
Wire Wire Line
	1125 2675 1125 2850
Wire Wire Line
	1225 2675 1225 2850
Wire Notes Line
	7275 2975 7275 475 
Wire Notes Line
	475  2975 7275 2975
Wire Notes Line
	1350 1350 1350 2300
Wire Notes Line
	2050 475  2050 2975
Wire Wire Line
	1625 1675 1375 1675
Wire Wire Line
	1625 1775 1375 1775
NoConn ~ 5325 1675
Text Label 4650 2175 0    60   ~ 0
INT
$Comp
L CONN_01X19 J3
U 1 1 5948DF50
P 6600 1675
F 0 "J3" H 6600 2675 50  0000 C CNN
F 1 "GPIO_BK" V 6700 1675 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x19_Pitch2.54mm" H 6600 1675 50  0001 C CNN
F 3 "" H 6600 1675 50  0001 C CNN
	1    6600 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1775 6175 1775
$EndSCHEMATC
