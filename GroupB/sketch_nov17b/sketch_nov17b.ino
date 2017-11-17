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
    if (data > 47 && data < '6') {
      blinkLED(data-48);
    } else {
     Serial.println("Invalid");
    }
  }
}

void blinkLED(int pin) {
  digitalWrite(pinNumber[pin], HIGH);
  delay(blinkTime[pin]);
  digitalWrite(pinNumber[pin], LOW);
}


