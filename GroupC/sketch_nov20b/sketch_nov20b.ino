const int button1 = 2;
const int button2 = 3;
int button1State = 0;
int button1PrevState = 0;

int buttonCounter = 0;

int button2State = 1;
int button2PrevState = 1;

void setup() {
  // put your setup code here, to run once:
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  Serial.begin(9600);
}

void loop() {
  // read the pushbutton input pin:
  button1State = digitalRead(button1);
  // compare the buttonState to its previous state
  if (button1State != button1PrevState) {
    // if the state has changed, increment the counter
    if (button1State == HIGH) {
      if (++buttonCounter > 16) {
        buttonCounter = 16;
      }
      Serial.println(buttonCounter);
    }
  }
  button1PrevState = button1State;

  button2State = digitalRead(button2);
  // compare the buttonState to its previous state
  if (button2State != button2PrevState) {
    // if the state has changed, increment the counter
    if (button2State == LOW) {
      if (--buttonCounter < 0 ) {
        buttonCounter = 0; 
      }
      Serial.println(buttonCounter);
    }
  }
  button2PrevState = button2State;

} // end loop
