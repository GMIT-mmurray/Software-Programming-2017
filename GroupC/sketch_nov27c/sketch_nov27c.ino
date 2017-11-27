int pinInputArray[] =  {2, 3, 4};
int pinOutputArray[] = {5, 6, 7, 8, 9, 10, 11, 12};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 8; i++) {
    pinMode(pinOutputArray[i], OUTPUT);
  }
  for (int i = 0; i < 3; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  if ((digitalRead(2) == LOW) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == LOW)) {
    LEDOutputs(HIGH, LOW, LOW, LOW, LOW, LOW, LOW, LOW);
  }
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == LOW)) {
    LEDOutputs(LOW, HIGH, LOW, LOW, LOW, LOW, LOW, LOW);
  }
  if ((digitalRead(2) == LOW) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == LOW)) {
    LEDOutputs(LOW , LOW, HIGH , LOW, LOW, LOW, LOW, LOW);
  }
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == LOW)) {
    LEDOutputs(LOW, LOW, LOW, HIGH, LOW, LOW, LOW, LOW);
  }  
  if ((digitalRead(2) == LOW) && (digitalRead(3) == LOW) &&
         (digitalRead(4) == HIGH)) {
    LEDOutputs(LOW, LOW, LOW, LOW, HIGH, LOW, LOW, LOW);
  }

  if ((digitalRead(2) == HIGH) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == HIGH)) {
    LEDOutputs(LOW, LOW, LOW, LOW, LOW, HIGH, LOW, LOW);

  }  if ((digitalRead(2) == LOW) && (digitalRead(3) == HIGH) &&
         (digitalRead(4) == HIGH)) {
    LEDOutputs(LOW, LOW, LOW, LOW, LOW, LOW, HIGH, LOW);
  }

  if ((digitalRead(2) == HIGH) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == HIGH)) {
    LEDOutputs(LOW, LOW, LOW, LOW, LOW, LOW, LOW, HIGH);
  }
}

void LEDOutputs(int led0, int led1, int led2, int led3, int led4, int led5, int led6, int led7 ) {
  digitalWrite(pinOutputArray[0], led0);
  digitalWrite(pinOutputArray[1], led1);
  digitalWrite(pinOutputArray[2], led2);
  digitalWrite(pinOutputArray[3], led3);
  digitalWrite(pinOutputArray[4], led4);
  digitalWrite(pinOutputArray[5], led5);
  digitalWrite(pinOutputArray[6], led6);
  digitalWrite(pinOutputArray[7], led7);
}

