int pinOutputs[] = {5, 6, 7, 8, 9, 10, 11, 12};
int pinInputs[] = {2, 3, 4};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 8; i++) {
    pinMode(pinOutputs[i], OUTPUT);
  }
  for (int i = 0; i < 3; i++) {
    pinMode(pinInputs[i], INPUT);
  }
}

void loop() {
  int bit0 = digitalRead(pinInputs[0]);
  int bit1 = digitalRead(pinInputs[1]);
  int bit2 = digitalRead(pinInputs[2]);

  if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }

  if (bit0 == 1 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], LOW);
    digitalWrite(pinOutputs[1], HIGH);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }
    if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    digitalWrite(pinOutputs[0], HIGH);
    digitalWrite(pinOutputs[1], LOW);
    digitalWrite(pinOutputs[2], LOW);
    digitalWrite(pinOutputs[3], LOW);
    digitalWrite(pinOutputs[4], LOW);
    digitalWrite(pinOutputs[5], LOW);
    digitalWrite(pinOutputs[6], LOW);
    digitalWrite(pinOutputs[7], LOW);
  }

}
