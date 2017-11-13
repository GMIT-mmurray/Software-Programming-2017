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
        digitalWrite(pinArray[0], HIGH);
        delay(timeOut[0]);
        digitalWrite(pinArray[0], LOW);
        break;
      case '1':
        digitalWrite(pinArray[1], HIGH);
        delay(timeOut[1]);
        digitalWrite(pinArray[1], LOW);
        break;
    }
  }
}
