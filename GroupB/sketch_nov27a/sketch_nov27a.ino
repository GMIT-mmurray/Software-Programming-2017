const int arraySize = 6;
int pinNumber [] = {7, 3, 4, 2, 6, 5};
int blinkTime [] = {1000, 2000, 600, 3000, 600, 1000};
int val;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < arraySize; i++) {
    pinMode(pinNumber[i], OUTPUT);
  }
  for (int i = 8; i < 14; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int i=0; i < 6; i++) {
    val = digitalRead(i+8);
    if (val == HIGH) {
      blinkLED(i);
    }
  }
}
  void blinkLED(int pin) {
    digitalWrite(pinNumber[pin], HIGH);
    delay(blinkTime[pin]);
    digitalWrite(pinNumber[pin], LOW);
  }


