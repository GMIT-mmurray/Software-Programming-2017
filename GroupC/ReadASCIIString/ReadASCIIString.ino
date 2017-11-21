/*
  Reading a serial ASCII-encoded string.

  This sketch demonstrates the Serial parseInt() function.
  It looks for an ASCII string of comma-separated values.
  It parses them into ints, and uses those to fade an RGB LED.

  Circuit: Common-Cathode RGB LED wired like so:
   Red anode: digital pin 3
   Green anode: digital pin 5
   Blue anode: digital pin 6
   Cathode : GND

  created 13 Apr 2012
  by Tom Igoe

  modified 14 Mar 2016
  by Arturo Guadalupi

  This example code is in the public domain.
*/

void setup() {
  // initialize serial:
  Serial.begin(9600);
  // make the pins outputs:

}

void loop() {
  // if there's any serial available, read it:
  while (Serial.available() > 0) {

    // look for the next valid integer in the incoming serial stream:
    int red = Serial.parseInt();
  
    // constrain the values to 0 - 255 and invert
    // if you're using a common-cathode LED, just use "constrain(color, 0, 255);"
  
    Serial.println(red);
  
  }
}








