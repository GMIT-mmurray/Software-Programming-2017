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
  int state0 = digitalRead(pinInputArray[0]);
  int state1 = digitalRead(pinInputArray[1]);
  int state2 = digitalRead(pinInputArray[2]);

  for (int i=0; i<8;i++){
    digitalWrite(pinOutputArray[i],LOW);
  }
  
  if ((state0 == LOW) && (state1 == LOW) &&
      (state2 == LOW)) {
    digitalWrite(pinOutputArray[0],HIGH);
  }
  if ((state0== HIGH) && (state1 == LOW) &&
      (state2 == LOW)) {
      digitalWrite(pinOutputArray[1],HIGH);
  }
  if ((state0 == LOW) && (state1 == HIGH) &&
      (state2 == LOW)) {
      digitalWrite(pinOutputArray[2],HIGH);
  }
  if ((state0 == HIGH) && (state1 == HIGH) &&
      (state2 == LOW)) {
      digitalWrite(pinOutputArray[3],HIGH);
  }  
  if ((state0 == LOW) && (state1 == LOW) &&
         (state2 == HIGH)) {
      digitalWrite(pinOutputArray[4],HIGH);
  }

  if ((state0 == HIGH) && (state1 == LOW) &&
      (state2 == HIGH)) {
       digitalWrite(pinOutputArray[5],HIGH);

  }  if ((state0 == LOW) && (state1 == HIGH) &&
         (state2 == HIGH)) {
       digitalWrite(pinOutputArray[6],HIGH);
  }

  if ((state0 == HIGH) && (state1 == HIGH) &&
      (state2 == HIGH)) {
       digitalWrite(pinOutputArray[7],HIGH);
  }
  delay(300);
}



