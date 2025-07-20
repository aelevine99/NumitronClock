/*

Control for Nixie Clock
Al Levine

*/

// ~~~~~~~~~~ LIBRARY IMPORTS ~~~~~~~~~~
#include <Wire.h>  // i2c library				https://docs.arduino.cc/language-reference/en/functions/communication/wire/

// ~~~~~~~~~~ HARDWARE PIN DEFINITIONS ~~~~~~~~~~
#define SCL A5  // i2c SCL
#define SDA A4  // i2c SDA
#define DIN 5   // HV8512 serial data input
#define BLK 6   // HV5812 blanking input
#define CLK 7   // HV5812 data shift register clock input
#define STR 8   // HV5812 output enable input
#define DIM 9   // Dimming PWM
#define POT A7  // Potentiometer input

//Bit array for 2x HV5812 chips
boolean nixieDisplayArray[40];

//Assignment of tube cathodes to HV8512 driver pins
/*
Left digit:					Right digit:
Tube	HV5812WG-G			Tube	HV5812WG-G
01/e	12/HVOUT11			01/e	20/HVOUT7
05/d	11/HVOUT12			05/d	21/HVOUT6
06/c	10/HVOUT13			06/c	22/HVOUT5
07/b	09/HVOUT14			07/b	23/HVOUT4
08/a	08/HVOUT15			08/a	24/HVOUT3
09/g	07/HVOUT16			09/g	25/HVOUT2
10/f	06/HVOUT17			10/f	26/HVOUT1
*/

//	cathode	 		01, 05, 06, 07, 08, 09, 10
int tube1[] = { 11, 12, 13, 14, 15, 16, 17 };  // assuming hvout number and not actual pin????
int tube2[] = { 7, 6, 5, 4, 3, 2, 1 };
int tube3[] = { 31, 32, 33, 34, 35, 36, 37 };  // add 20 for tube 1 second chip
int tube4[] = { 17, 16, 15, 14, 13, 12, 11 };  // add 20 for tube 2 second chip

int digit1, digit2, digit3, digit4;


// ~~~~~~~~~~ SETUP ~~~~~~~~~~
void setup() {
	Serial.begin(9600);  //intialize serial output

	//initialize output pins
	pinMode(DIN, OUTPUT);
	digitalWrite(DIN, LOW);
	pinMode(BLK, OUTPUT);
	digitalWrite(BLK, LOW);
	pinMode(CLK, OUTPUT);
	digitalWrite(CLK, LOW);
	pinMode(STR, OUTPUT);
	digitalWrite(STR, LOW);
	pinMode(DIM, OUTPUT);
	digitalWrite(DIM, LOW);
}

// ~~~~~~~~~~ LOOP ~~~~~~~~~~
void loop() {
}