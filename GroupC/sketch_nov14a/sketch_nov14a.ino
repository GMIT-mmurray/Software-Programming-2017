int pinArray[] = {4, 6, 2, 3, 7, 5};
int timeOut[] = {500, 1000, 3000, 400, 1000, 600};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 6; i++) {
    pinMode(pinArray[i], OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    int data = Serial.read();
    switch (data) {
      case '0':
        blink(0);
        break;
      case '1':
        blink(1);
        break;
      case '2':
        blink(2);
        break;
      case '3':
        blink(3);
        break;
      case '4':
        blink(4);
        break;
      case '5':
        blink(5);
        break;
    }
  }
}

void blink(int p) {
  digitalWrite(pinArray[p], HIGH);
  delay(timeOut[p]);
  digitalWrite(pinArray[p], LOW);
}

