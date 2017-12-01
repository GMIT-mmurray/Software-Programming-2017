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
}
