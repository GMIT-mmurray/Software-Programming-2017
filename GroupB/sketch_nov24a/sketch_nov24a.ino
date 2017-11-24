#include <Stepper.h>
const int SPR = 200;
Stepper stepper1(SPR, 8, 9);
Stepper stepper2(SPR, 10, 11);
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  stepper1.setSpeed(60);
  stepper2.setSpeed(60);
  // put stepper to 12 oclock
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
    int number = Serial.parseInt();
    Serial.print(" Steps : ");
    Serial.println(number/1.8);
    stepper1.step(number/1.8);
    stepper2.step((number*-1)/1.8);
  }
}
