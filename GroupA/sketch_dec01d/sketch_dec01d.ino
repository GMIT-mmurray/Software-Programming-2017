#include <Stepper.h>
const int SPR = 200;
Stepper myStepper(SPR, 8, 9);
int Prev = 0;
int Present = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myStepper.setSpeed(60);

  // Puts motors to 12 oclock position
  digitalWrite(8, LOW);
  digitalWrite(9, HIGH);
  delay(100);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    Present = Serial.parseInt();
    Serial.println(Present);
    myStepper.step((Prev * -1) / 1.8);
    delay(100);
    myStepper.step(Present / 1.8);
    delay(100);
    Prev = Present;
  }
}

