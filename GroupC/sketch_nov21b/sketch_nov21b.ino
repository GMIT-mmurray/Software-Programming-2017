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
  if (Serial.available() > 0) {
    // look for the next valid integer in the incoming serial stream:
    int steps = Serial.parseInt();
    Serial.println(steps/1.8);
    myStepper.step(steps/1.8);
  }
} // end loop
