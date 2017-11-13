const int arraySize = 6;
int pinNumber [] = {7, 3, 4, 2, 6, 5};
int blinkTime [] = {1000, 2000, 600, 3000, 600, 1000};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < arraySize; i++) {
    pinMode(pinNumber[i], OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    int data = Serial.read();
    switch (data) {
      case 48: {
          digitalWrite(pinNumber[0], HIGH);
          delay(blinkTime[0]);
          digitalWrite(pinNumber[0], LOW);
          break;
        }
      case 49: {
          digitalWrite(pinNumber[1], HIGH);
          delay(blinkTime[1]);
          digitalWrite(pinNumber[1], LOW);
          break;
        }
    }
  }
}
