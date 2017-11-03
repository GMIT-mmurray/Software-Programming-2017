int x = 300;
int y = 200;
int dx = 1;
int dy = 1;
PImage BG;
String myString = "";

PFont font;
int startTime;
int displayTime = 5000;
boolean hit = false;

void setup() {
  size(600, 600);
  background(#FF0303);
  frameRate(60);
  //  BG = loadImage("sprial.png");
  //  font = loadFont("BodoniMTCondensed-BoldItalic-48.vlw");
}

void draw() {
  background(255);
  drawMonster();
  println("x= ", x, "y= ", y);
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  //  textFont(font);
  String dispTime = "Time-> " + hour() + ":" + minute() + ":"  + second(); 
  text(dispTime, width-150, (height-550) + 45);
  String dispdate = "Date-> " + day() + ":" + month() + ":"  + year(); 
  text(dispdate, width-150, (height-520) + 45);
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

  if (hit == true && millis() < startTime+displayTime) {
    textAlign(CENTER);
    //   textFont(font);
    textSize(50);
    text(myString, width/2, height-20);
  } else {
    hit = false;
  }
}