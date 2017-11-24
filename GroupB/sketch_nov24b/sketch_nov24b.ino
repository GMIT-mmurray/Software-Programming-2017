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
  pinMode(2,INPUT);
  pinMode(3,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (digitalRead(2) == HIGH) {
    stepper1.step(1);
  }
  if (digitalRead(3) == HIGH) {
    stepper2.step(-1);
  }
}
