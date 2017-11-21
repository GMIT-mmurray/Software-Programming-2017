


const int button1 = 2;
const int button2 = 3;
int button1Value = 0;
int button1PrevValue = 0;
int button2Value = 1;
int button2PrevValue = 1;

int counter = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  Serial.begin(9600);
}

void loop() {
  // read the pushbutton input pin:
  button1Value = digitalRead(button1); // Present Value
  // compare the buttonState to its previous state
  if (button1Value != button1PrevValue) {
    // if the current state is HIGH then the button
    // went from low to high:
    if (button1Value == HIGH) {
      if (++counter > 16) {
        counter = 16;
      }
      Serial.println(counter);
    }
  }
  // save the current value into trevious value,
  //for next time through the loop
  button1PrevValue = button1Value;

  button2Value = digitalRead(button2); // Present Value
  if (button2Value != button2PrevValue) {
    if (button2Value == LOW) {
      if (--counter < 0) {
        counter = 0;
      }
      Serial.println(counter);
    }
  }
  button2PrevValue = button2Value;
}
