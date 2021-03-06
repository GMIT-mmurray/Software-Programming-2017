#include <Stepper.h>
const int SPR = 200;
Stepper myStepper(SPR,8,9);

const int button1 = 2;
const int button2 = 3;
int b1PresValue = 0;
int b1PrevValue = 0;
int b2PresValue = 1;
int b2PrevValue = 1;


void setup() {
  // put your setup code here, to run once:
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  Serial.begin(9600);
  myStepper.setSpeed(60);
  // Puts motor to 12 oclock position
  digitalWrite(8,LOW);
  digitalWrite(9,HIGH);
  delay(100);
}

void loop() {
  // read the pushbutton input pin 2:
  b1PresValue = digitalRead(button1);
  // compare the button Value to its previous Value
  if  (b1PrevValue != b1PresValue) {
    // if the current vcalue is HIGH then the button
    // went from low to high:
    if (b1PresValue == HIGH) {
      myStepper.step(1);
      Serial.println("Moved Motor Clockwise by 1");
    }
  }
  // save the current value into previous value,
  //for next time through the loop ---IMPORTANT
  b1PrevValue = b1PresValue;

  // read the pushbutton input pin 3:
  b2PresValue = digitalRead(button2);
  // compare the button Value to its previous Value
  if  (b2PrevValue != b2PresValue) {
    // if the current value is LOW then the button
    // went from low to high:
    if (b2PresValue == LOW) {
      myStepper.step(-1);
      Serial.println("Moved Motor Anti Clockwise by 1");
    }
  }
  // save the current value into previous value,
  //for next time through the loop ---IMPORTANT
  b2PrevValue = b2PresValue;
}
