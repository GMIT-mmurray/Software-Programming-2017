int pinOutputs [] = {5, 6, 7, 8, 9, 10, 11, 12};
int pinInputs[] = {2, 3, 4};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 8 ; i++) {
    pinMode(pinOutputs[i], OUTPUT);
  }
  for (int i = 0; i < 3; i++) {
    pinMode(pinInputs[i], INPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  int bit0 = digitalRead(pinInputs[0]);
  int bit1 = digitalRead(pinInputs[1]);
  int bit2 = digitalRead(pinInputs[2]);

  if (bit0 == LOW && bit1 == LOW && bit2 == LOW) {
   LEDOutputs(HIGH,LOW,LOW,LOW,LOW,LOW,LOW,LOW);
  }
  if (bit0 == HIGH && bit1 == LOW && bit2 == LOW) {
   LEDOutputs(LOW,HIGH,LOW,LOW,LOW,LOW,LOW,LOW);
  }
  if (bit0 == LOW && bit1 == HIGH && bit2 == LOW) {
  LEDOutputs(LOW,LOW,HIGH,LOW,LOW,LOW,LOW,LOW);
  }
  if (bit0 == HIGH && bit1 == HIGH && bit2 == LOW) {
  LEDOutputs(LOW,LOW,LOW,HIGH,LOW,LOW,LOW,LOW);
  }
  if (bit0 == LOW && bit1 == LOW && bit2 == HIGH) {
  LEDOutputs(LOW,LOW,LOW,LOW,HIGH,LOW,LOW,LOW);
  }
  if (bit0 == HIGH && bit1 == LOW && bit2 == HIGH) {
  LEDOutputs(LOW,LOW,LOW,LOW,LOW,HIGH,LOW,LOW);
  }
  if (bit0 == LOW && bit1 == HIGH && bit2 == HIGH) {
  LEDOutputs(LOW,LOW,LOW,LOW,LOW,LOW,HIGH,LOW);
  }
  if (bit0 == HIGH && bit1 == HIGH && bit2 == HIGH) {
  LEDOutputs(LOW,LOW,LOW,LOW,LOW,LOW,LOW,HIGH);
  }
}

void LEDOutputs(int b0,int b1,int b2,int b3,int b4,int b5,int b6,int b7) {
  digitalWrite(pinOutputs[0], b0);
  digitalWrite(pinOutputs[1], b1);
  digitalWrite(pinOutputs[2], b2);
  digitalWrite(pinOutputs[3], b3);
  digitalWrite(pinOutputs[4], b4);
  digitalWrite(pinOutputs[5], b5);
  digitalWrite(pinOutputs[6], b6);
  digitalWrite(pinOutputs[7], b7);
}



