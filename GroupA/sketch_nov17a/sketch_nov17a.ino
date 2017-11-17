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
    if (data == 48) {
      for (int i = 0; i < 6; i++) {
        digitalWrite(pinArray[i], HIGH);
        delay(timeOut[i]);
        digitalWrite(pinArray[i], LOW);
      }
    }
  }
}

