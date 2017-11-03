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
  displayTime();
  hitCheck();
  if (hit == true && millis() < startTime+displayTime) {
    textAlign(CENTER);
    //   textFont(font);
    textSize(50);
    text(myString, width/2, height-20);
  } else {
    hit = false;
  }
}