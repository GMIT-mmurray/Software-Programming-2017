/*
  Switch statement

  Demonstrates the use of a switch statement.  The switch
  statement allows you to choose from among a set of discrete values
  of a variable.  It's like a series of if statements.

  To see this sketch in action, but the board and sensor in a well-lit
  room, open the serial monitor, and and move your hand gradually
  down over the sensor.

  The circuit:
   photoresistor from analog in 0 to +5V
   10K resistor from analog in 0 to ground

  created 1 Jul 2009
  modified 9 Apr 2012
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/SwitchCase
*/

// these constants won't change. They are the
// lowest and highest readings you get from your sensor:
const int sensorMin = 0;      // sensor minimum, discovered through experiment
const int sensorMax = 1022;    // sensor maximum, discovered through experiment
const int DARK = 2;
const int DIM = 3;
const int MEDIUM = 4;
const int BRIGHT = 5;

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  pinMode(DARK, OUTPUT);
  pinMode(DIM, OUTPUT);
  pinMode(MEDIUM, OUTPUT);
  pinMode(BRIGHT, OUTPUT);
}

void loop() {
  // read the sensor:
  int sensorReading = analogRead(A0);
  // map the sensor range to a range of four options:
  int range = map(sensorReading, sensorMin, sensorMax, 0, 3);

  // do something different depending on the
  // range value:
  switch (range) {
    case 0:    // your hand is on the sensor
      Serial.println("dark");
      switchLEDS(HIGH, LOW, LOW, LOW);
      break;
    case 1:    // your hand is close to the sensor
      Serial.println("dim");
      switchLEDS(LOW, HIGH, LOW, LOW);
      break;
    case 2:    // your hand is a few inches from the sensor
      Serial.println("medium");
      switchLEDS(LOW, LOW, HIGH, LOW);
      break;
    case 3:    // your hand is nowhere near the sensor
      Serial.println("bright");
      switchLEDS(LOW, LOW, LOW, HIGH);
      break;
    default:
      Serial.println("invalid");
      switchLEDS(HIGH, HIGH, HIGH, HIGH);
      break;
  }
  delay(1);        // delay in between reads for stability
}

void switchLEDS(int a, int b, int c, int d) {
  Serial.print(a);
  digitalWrite(DARK, a);
  digitalWrite(DIM, b);
  digitalWrite(MEDIUM, c);
  digitalWrite(BRIGHT, d);
}



