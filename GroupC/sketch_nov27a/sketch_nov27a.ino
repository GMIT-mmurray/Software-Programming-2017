int pinArray[] =  {4, 6, 2, 3, 7, 5};
int pinArray1[] = {5, 4, 3, 7, 6, 2};
int timeOut[] = {500, 1000, 3000, 400, 1000, 600};
int val;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 6; i++) {
    pinMode(pinArray[i], OUTPUT);
  }
  for (int i = 8; i < 14; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

  for (int i = 0; i < 6; i++) {
    val = digitalRead(i+8);
    if (val == HIGH) {
      blink(i);
    }
  }

  void blink(int p) {
    digitalWrite(pinArray[p], HIGH);
    digitalWrite(pinArray1[p], HIGH);
    delay(timeOut[p]);
    digitalWrite(pinArray[p], LOW);
    digitalWrite(pinArray1[p], LOW);
  }

