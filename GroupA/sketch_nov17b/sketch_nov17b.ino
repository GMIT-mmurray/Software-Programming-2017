int pinArray[] = {6, 4, 2, 7, 5, 3};
int timeOut[] = {1500, 3000, 1000, 800, 1200, 500};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 6; i++)  {
    pinMode(pinArray[i], OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    int data = Serial.read();
    Serial.println(data);
    switch (data) {
      case 48: {
          blinkLED(0);
          break;
        }
      case 49: {
          blinkLED(1);
          break;
        }
      case 50: {
          blinkLED(2);
          break;
        }
      case '3': {
          blinkLED(3);
          break;
        }
      case '4': {
          blinkLED(4);
          break;
        }
      case '5': {
          blinkLED(5);
          break;
        }
    }
  }
}

void blinkLED(int pin) {
  digitalWrite(pinArray[pin], HIGH);
  delay(timeOut[pin]);
  digitalWrite(pinArray[pin], LOW);
}

