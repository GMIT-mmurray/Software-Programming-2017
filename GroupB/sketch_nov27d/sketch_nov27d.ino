int pinOutputs [] = {5, 6, 7, 8, 9, 10, 11, 12};
int pinInputs[] = {2, 3, 4};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 8 ; i++) {
    pinMode(pinOutputs[i], OUTPUT);
  }
  for (int i = 0; i < 3; i++) {
    pinMode(pinInputs[i], INPUT);
  }
}

void loop() {
  for(int i = 0; i < 8; i++) {
    digitalWrite(pinOutputs[i],LOW);
  }
  
  int bit0 = digitalRead(pinInputs[0]);
  int bit1 = digitalRead(pinInputs[1]);
  int bit2 = digitalRead(pinInputs[2]);

  if (bit0 == LOW && bit1 == LOW && bit2 == LOW) {
   digitalWrite(pinOutputs[0],HIGH);
  }
  if (bit0 == HIGH && bit1 == LOW && bit2 == LOW) {
   digitalWrite(pinOutputs[1],HIGH);
  }
  if (bit0 == LOW && bit1 == HIGH && bit2 == LOW) {
 digitalWrite(pinOutputs[2],HIGH);
  }
  if (bit0 == HIGH && bit1 == HIGH && bit2 == LOW) {
  digitalWrite(pinOutputs[3],HIGH);
  }
  if (bit0 == LOW && bit1 == LOW && bit2 == HIGH) {
  digitalWrite(pinOutputs[4],HIGH);
  }
  if (bit0 == HIGH && bit1 == LOW && bit2 == HIGH) {
 digitalWrite(pinOutputs[5],HIGH);
  }
  if (bit0 == LOW && bit1 == HIGH && bit2 == HIGH) {
  digitalWrite(pinOutputs[6],HIGH);
  }
  if (bit0 == HIGH && bit1 == HIGH && bit2 == HIGH) {
  digitalWrite(pinOutputs[7],HIGH);
  }
  delay(300);
}





