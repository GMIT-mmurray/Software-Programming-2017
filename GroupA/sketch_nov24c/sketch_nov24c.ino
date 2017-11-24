#include <Stepper.h>
const int SPR = 200;
Stepper myStepper(SPR, 8, 9);
Stepper myStepper1(SPR, 10, 11);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myStepper.setSpeed(60);
  myStepper1.setSpeed(60);
  // Puts motors to 12 oclock position
  digitalWrite(8, LOW);
  digitalWrite(9, HIGH);
  delay(100);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  delay(100);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    int value = Serial.parseInt();
    Serial.println(value/1.8);
    myStepper.step(value/1.8);
    myStepper1.step(value/-1.8);
  }
}
