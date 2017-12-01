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
    switchLEDS(0, 0, 0, 0, 0, 0, 0, 1);
  }
  if (bit0 == 1 && bit1 == 0 && bit2 == 0) {
    switchLEDS(0, 0, 0, 0, 0, 0, 1, 0);
  }
  if (bit0 == 0 && bit1 == 1 && bit2 == 0) {
    switchLEDS(0, 0, 0, 0, 0, 1, 0, 0);
  }
  if (bit0 == 1 && bit1 == 1 && bit2 == 0) {
    switchLEDS(0, 0, 0, 0, 1, 0, 0, 0);
  }
  if (bit0 == 0 && bit1 == 0 && bit2 == 0) {
    switchLEDS(0, 0, 0, 0, 0, 0, 0, 1);
  }
  if (bit0 == 0 && bit1 == 0 && bit2 == 1) {
    switchLEDS(0, 0, 0, 1, 0, 0, 0, 0);
  }
  if (bit0 == 1 && bit1 == 0 && bit2 == 1) {
    switchLEDS(0, 0, 1, 0, 0, 0, 0, 0);
  }
  if (bit0 == 0 && bit1 == 1 && bit2 == 1) {
    switchLEDS(0, 1, 0, 0, 0, 0, 0, 0);
  }
  if (bit0 == 1 && bit1 == 1 && bit2 == 1) {
    switchLEDS(1, 0, 0, 0, 0, 0, 0, 0);
  }
}

void switchLEDS(int LED7, int LED6, int LED5, int LED4, int LED3, int LED2, int LED1, int LED0) {
  digitalWrite(pinOutputs[0], LED0);
  digitalWrite(pinOutputs[1], LED1);
  digitalWrite(pinOutputs[2], LED2);
  digitalWrite(pinOutputs[3], LED3);
  digitalWrite(pinOutputs[4], LED4);
  digitalWrite(pinOutputs[5], LED5);
  digitalWrite(pinOutputs[6], LED6);
  digitalWrite(pinOutputs[7], LED7);
}

