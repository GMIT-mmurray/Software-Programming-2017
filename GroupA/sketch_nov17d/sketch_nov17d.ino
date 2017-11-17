int pinArray[] = {6, 4, 2, 7, 5, 3};
int timeOut[] = {1500, 3000, 1000, 800, 1200, 500};
int value = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 6; i++)  {
    pinMode(pinArray[i], OUTPUT);
  }
  for (int i = 8; i < 14; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  value = digitalRead(8);
  if (value == HIGH) {
    blinkLED(0);
  }
  value = digitalRead(9);
  if (value == HIGH) {
    blinkLED(1);
  }
  value = digitalRead(10);
  if (value == HIGH) {
    blinkLED(2);
  }
  value = digitalRead(11);
  if (value == HIGH) {
    blinkLED(3);
  }
  value = digitalRead(12);
  if (value == HIGH) {
    blinkLED(4);
  }
  value = digitalRead(13);
  if (value == HIGH) {
    blinkLED(5);
  }
}

void blinkLED(int pin) {
  digitalWrite(pinArray[pin], HIGH);
  delay(timeOut[pin]);
  digitalWrite(pinArray[pin], LOW);
}

