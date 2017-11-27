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
                 digitalWrite(pinOutputArray[0],HIGH);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }
 
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == LOW)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],HIGH); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }
  if ((digitalRead(2) == LOW) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == LOW)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],HIGH);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }
 
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == LOW)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],HIGH);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }  if ((digitalRead(2) == LOW) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == HIGH)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],HIGH); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }
 
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == LOW) &&
      (digitalRead(4) == HIGH)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],HIGH); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],LOW); 

  }  if ((digitalRead(2) == LOW) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == HIGH)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],HIGH);
                 digitalWrite(pinOutputArray[7],LOW); 

  }
 
  if ((digitalRead(2) == HIGH) && (digitalRead(3) == HIGH) &&
      (digitalRead(4) == HIGH)) {
                 digitalWrite(pinOutputArray[0],LOW);
                 digitalWrite(pinOutputArray[1],LOW); 
                 digitalWrite(pinOutputArray[2],LOW);
                 digitalWrite(pinOutputArray[3],LOW);
                 digitalWrite(pinOutputArray[4],LOW); 
                 digitalWrite(pinOutputArray[5],LOW); 
                 digitalWrite(pinOutputArray[6],LOW);
                 digitalWrite(pinOutputArray[7],HIGH); 

  }
}

