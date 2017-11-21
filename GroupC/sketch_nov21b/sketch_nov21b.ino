#include <Stepper.h>
const int stepsPerRevolution = 200;
Stepper myStepper(stepsPerRevolution, 8, 9);



void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myStepper.setSpeed(60);
  // Reset the motor to 12oclock position
  digitalWrite(8, LOW);
  digitalWrite(9, HIGH);
  delay(100);
}

void loop() {
  while (Serial.available() > 0) {
    // look for the next valid integer in the incoming serial stream:
    int red = Serial.parseInt();
    // constrain the values to 0 - 255 and invert
    // if you're using a common-cathode LED, just use "constrain(color, 0, 255);"
    Serial.println(red);
  }
} // end loop
