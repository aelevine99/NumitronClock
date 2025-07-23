/*

Control for Nixie Clock
Al Levine

*/

// ~~~~~~~~~~~~~~~~~~~~ LIBRARY IMPORTS ~~~~~~~~~~~~~~~~~~~~
#include <Wire.h>  // i2c library				https://docs.arduino.cc/language-reference/en/functions/communication/wire/

// ~~~~~~~~~~~~~~~~~~~~ HARDWARE PIN DEFINITIONS ~~~~~~~~~~~~~~~~~~~~
// use const instead of #define, best practice according to arduino documentation
const SCL A5;  // i2c SCL
const SDA A4;  // i2c SDA
const DIN 4;   // HV8512 serial data input for 1st chip
const BLK 6;   // HV5812 blanking input
const CLK 7;   // HV5812 data shift register clock input
const STR 8;   // HV5812 output enable input
const DIM 9;   // Dimming PWM
const POT A7;  // Potentiometer input

// Assignment of tube cathodes to HV8512 driver pins
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
int tube1[7] = { 11, 12, 13, 14, 15, 16, 17 };  // assuming hvout number and not actual pin????
int tube2[7] = { 7, 6, 5, 4, 3, 2, 1 };
int tube3[7] = { 31, 32, 33, 34, 35, 36, 37 };  // add 20 for tube 1 second chip
int tube4[7] = { 17, 16, 15, 14, 13, 12, 11 };  // add 20 for tube 2 second chip

// ~~~~~~~~~~~~~~~~~~~~ MISC SETUP ~~~~~~~~~~~~~~~~~~~~

boolean nixieDisplayArray[40];   // Bit array for 2x HV5812 chips
int digits[4] = { 0, 0, 0, 0 };  // array to store digits

// Font table
//	tube pin   1,5,6,7,8,9,10
int num0[] = { 1, 1, 1, 1, 1, 0, 1 };
int num1[] = { 0, 0, 1, 1, 0, 0, 0 };
int num2[] = { 1, 1, 0, 1, 1, 0, 0 };
int num3[] = { 0, 1, 1, 1, 1, 1, 0 };
int num4[] = { 0, 0, 1, 1, 0, 1, 1 };
int num5[] = { 0, 1, 1, 0, 1, 1, 1 };
int num6[] = { 1, 1, 1, 0, 1, 1, 1 };
int num7[] = { 0, 0, 1, 1, 1, 0, 0 };
int num8[] = { 1, 1, 1, 1, 1, 1, 1 };
int num9[] = { 0, 1, 1, 1, 1, 1, 1 };


// ~~~~~~~~~~~~~~~~~~~~ SETUP FUNCTION ~~~~~~~~~~~~~~~~~~~~
void setup() {
	Serial.begin(9600);  //intialize serial output

	// initialize output pins
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

// ~~~~~~~~~~~~~~~~~~~~ LOOP FUNCTION ~~~~~~~~~~~~~~~~~~~~
void loop() {
}

// ~~~~~~~~~~~~~~~~~~~~ OTHER FUNCTIONS ~~~~~~~~~~~~~~~~~~~~
int splitNum(int num) {  // split 4 digit integer into array of digits
	int array{ 4 };
	array[0] = (number / 1) % 10;
	array[0] = (number / 10) % 10;
	array[0] = (number / 100) % 10;
	array[0] = (number / 1000) % 10;
	return array[];

	int printNum(int buffer, int tube, int num) {  //writes font table into display buffer, one tube at a time
		for (int i = 0; i < 7; i++) {
			int pos = tube[i];     // get pin number from tube pin assignment array
			buffer[pos] = num[i];  // write boolean value from font table to relevant pin in display buffer
		}
		return buffer;
	}