/*

Control for Nixie Clock
Al Levine

*/

// ~~~~~~~~~~ HARDWARE PIN DEFINITIONS ~~~~~~~~~~
#define SCL A5	//i2c SCL
#define SDA A4	//i2c SDA
#define DIN 5	//Data in 2 (minutes)
#define BLNK 6	//Blanking
#define CLK 7	//Clock
#define STR 8	//Strobe
#define DIM 9	//Dimming PWM
#define POT A7	//Potentiometer input

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

//	cathode	 01,05,06,07,08,09,10
int tube1[]={12,11,10,09,08,07,06}; // do i use the pin number or the hvout number????
int tube2[]={20,21,22,23,24,25,26};

int digit1, digit2, digit3, digit4


// ~~~~~~~~~~ SETUP ~~~~~~~~~~
void setup() {
	Serial.begin(9600);
}

// ~~~~~~~~~~ LOOP ~~~~~~~~~~
void loop() {
}