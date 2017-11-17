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
  val = digitalRead(8);
  if (val == HIGH) {
    blinkLED(0);
  }
   val = digitalRead(9);
  if (val == HIGH) {
    blinkLED(1);
  }
  val = digitalRead(10);
  if (val == HIGH) {
    blinkLED(2);
  }
   val = digitalRead(11);
  if (val == HIGH) {
    blinkLED(3);
  }
  val = digitalRead(12);
  if (val == HIGH) {
    blinkLED(4);
  }
   val = digitalRead(13);
  if (val == HIGH) {
    blinkLED(5);
  }
}

void blinkLED(int pin) {
  digitalWrite(pinNumber[pin], HIGH);
  delay(blinkTime[pin]);
  digitalWrite(pinNumber[pin], LOW);
}


