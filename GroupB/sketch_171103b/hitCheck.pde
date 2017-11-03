void hitCheck() {
    if (x > width-135) {
    x = width-135;
    hit = true;
    startTime = millis();
    myString = "RIGHT";
  }
  if (x < 125) {
    x = 125;
    hit = true;
    startTime = millis();
    myString = "LEFT";
  }

  if (y > height-282) {
    y = height-282;
    hit = true;
    startTime = millis();
    myString = "BOTTOM";
  }

  if (y < 116) {
    y = 116 ;
    hit = true;
    startTime = millis();
    myString = "UP";
  }
}