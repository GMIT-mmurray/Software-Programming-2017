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
          blinkLED(0);
          break;
        }
      case 49: {
          blinkLED(1);
          break;
        }
      case '2': {
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
  digitalWrite(pinNumber[pin], HIGH);
  delay(blinkTime[pin]);
  digitalWrite(pinNumber[pin], LOW);
}


