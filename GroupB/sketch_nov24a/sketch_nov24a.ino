#include <Stepper.h>
const int SPR = 200;
Stepper stepper1(SPR, 8, 9);
Stepper stepper2(SPR, 10, 11);
int previousValue = 0;
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
    int PresentValue = Serial.parseInt();
    Serial.print(" Dgrees : ");
    Serial.println(PresentValue);
    stepper1.step((PreviousValue*-1)/1.8);
    delay(50);
    stepper1.step(PresentValue/1.8);
    delay(50);
    PreviousValue = PresentValue;
  
  }
}
