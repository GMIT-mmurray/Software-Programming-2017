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
    switch(data) {
      case 48:{
      digitalWrite(pinArray[0], HIGH);
      delay(timeOut[0]);
      digitalWrite(pinArray[0], LOW);
      break;
      }
    case 49:{
      digitalWrite(pinArray[1], HIGH);
      delay(timeOut[1]);
      digitalWrite(pinArray[1], LOW);
      break;
      }
    }
  }
}
