String myString="";
String dispTime;
PFont myFont;
PImage img1;
int x = 100;
int y = 100;
int moveW = 1;
int moveH = 1;
int startTime;
int displayTime = 5000;
boolean wallHit = false;

void setup() {
  size(600, 600);
  //frameRate(100);
  smooth();
  //  img1 = loadImage("img1.png");
  // myFont = loadFont("GoudyOldStyleT-Bold-48.vlw");
}


void draw() {
  background(#1EE32C);
  //  image(img1, 0, 0);
  fill(#FEFF17);
  strokeWeight(6);
  rect(x, y, 400, 400);
  ellipse(x+125, y+100, 150, 150);
  fill(#FFFFFC);
  ellipse(x+300, y+100, 100, 100);
  fill(#FEFF17);
  fill(#FFFFFC);
  arc(x+125, y+100, 150, 150, 0, PI);
  fill(#000000);
  ellipse(x+125, y+110, 80, 80);
  fill(#FEFF17);
  arc(x+125, y+100, 150, 150, PI, PI*2);
  line(x+50, y+100, x+200, y+100);
  fill(#FFE600);
  quad(x+50, y, x+200, y, x+175, y-50, x+75, y-50);
  quad(x+230, y, x+360, y, x+335, y-50, x+255, y-50);
  noStroke();
  fill(#FEFF17);
  triangle(x+54, y-2, x+196, y-2, x+77, y-46);
  triangle(x+234, y-2, x+356, y-2, x+333, y-46);
  stroke(#0A0808);
  noFill();
  arc(x+200, y+200, 50, 50, radians(270), radians(260+180));
  fill(#FFFFFF);
  arc(x+195, y+250, 280, 240, radians(40), radians(170));
  fill(#FEFF17);
  arc(x+405, y+200, 800, 240, radians(108), radians(146));
  line(x+400, y, x+400, y+400);
  noFill();
  arc(x+50, y+220, 100, 100, radians(60), radians(90));
  arc(x+316, y+261, 100, 139, radians(99), radians(140));
  strokeWeight(72);
  point(x+295, y+105);

  if (x>width-403) {
    x = width-403;
  }
  if (x <3) {
    x=3;
  }
  if (y>height-403) {
    y = height-403;
  }
  if (y<53) {
    y = 53;
  }

  //  textFont(myFont);
  fill(#CAB9D1);
  textAlign(CENTER);
  textSize(30);
  if (myString !="" && wallHit == true) {
    //if (millis()< startTime+displayTime) < 
    if (millis()-startTime < displayTime) {
      text(myString, 300, 300);
    } else {
     wallHit = false; 
     myString = "";
    }
  }
  textSize(20);
  fill(#000000);
  dispTime =  + hour() + ":" + minute() + ":" + second();
  text(dispTime, width-55, 25+20);
  dispTime =  day() + "/" + month() + "/" + year();
  text(dispTime, width-55, 25); 
  println("x = ", x, "y = ", y, "moveW = ", moveW, "moveH = ", moveH);
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y=y-moveH;
    }
    if (keyCode == DOWN) {
      y=y+moveH;
    }
    if (keyCode == RIGHT) {
      x=x+moveW;
    }
    if (keyCode == LEFT) {
      x=x-moveW;
    }
  }
  if (x < 4) {
    wallHit = true;
    startTime = millis();
    myString = "LEFT WALL HIT";
  }
  if (x > 196) {
    wallHit = true;
    startTime = millis();
    myString = "RIGHT WALL HIT";
  }

  if (y < 54) {
    wallHit = true;
    startTime = millis();
    myString = "UPPER WALL HIT";
  }

  if (y > 196) {
    wallHit = true;
    startTime = millis();
    myString = "LOWER WALL HIT";
  }
}