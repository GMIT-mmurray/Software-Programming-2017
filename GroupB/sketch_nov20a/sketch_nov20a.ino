
const int button1 = 2;
const int button2 = 3;
int button1Value = 0;
int button1PrevValue = 0;
int button2Value = 1;
int button2PrevValue = 1;

void setup() {
  // put your setup code here, to run once:
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  Serial.begin(9600);
}

void loop() {
  button1Value = digitalRead(button1); // Present Value
  if (button1Value != button1PrevValue) {
    if (button1Value == HIGH) {
      Serial.println("Gone HIGH");
    }
  }
  button1PrevValue = button1Value;

  button1Value = digitalRead(button2); // Present Value
  if (button2Value != button2PrevValue) {
    if (button2Value == LOW) {
      Serial.println("Gone LOW");
    }
  }
  button2PrevValue = button2Value;
}
