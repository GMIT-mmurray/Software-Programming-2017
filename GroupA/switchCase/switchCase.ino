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
const int sensorMax = 600;    // sensor maximum, discovered through experiment
const int P2 = 2;
const int P3 = 3;
const int P4 = 4;
const int P5 = 5;

void setup() {
  // initialize serial communication:
  pinMode(P2, OUTPUT);
  pinMode(P3, OUTPUT);
  pinMode(P4, OUTPUT);
  pinMode(P5, OUTPUT);
  Serial.begin(9600);
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
      LEDS(HIGH, LOW, LOW, LOW);
      break;
    case 1:    // your hand is close to the sensor
      Serial.println("dim");
      LEDS(LOW, HIGH, LOW, LOW);
      break;
    case 2:    // your hand is a few inches from the sensor
      Serial.println("medium");
      LEDS(LOW, LOW, HIGH, LOW);
      break;
    case 3:    // your hand is nowhere near the sensor
      Serial.println("bright");
      LEDS(LOW, LOW, LOW, HIGH);
      break;
    default :
      LEDS(HIGH, HIGH, HIGH, HIGH);
      break;
  }
  delay(1);        // delay in between reads for stability
}

void LEDS (int x, int y, int w, int z) {
  digitalWrite(P2, x);
  digitalWrite(P3, y);
  digitalWrite(P4, w);
  digitalWrite(P5, z);
}



