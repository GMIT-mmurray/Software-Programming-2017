int y = 200;
int dx = 2;
int dy = 3;
int ballSize = 100;
int ballRadius = ballSize/2;
int x = ballRadius;
String myString = "";
PFont myFont;

void setup() {
  size(500, 500);
  myFont = loadFont("BradleyHandITC-48.vlw");
}

void draw() {
  background(#153ACB);
  // Move x and y
  x = x+dx;
  y = y+dy;

  // Method 2
  if ((x >=width-ballRadius) || (x<=ballRadius)) {
    dx = dx*-1;
  }
  if ((y >= height-ballRadius) || (y<=ballRadius)) {
    dy = dy*-1;
  }

  if (x < width/2) {
    fill(#15CB34);
    ellipse(width/2, height/2, 100, 100);
  } else {
    fill(#3F4840);
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  //draw the ellipse
  fill(#ED2644);
  ellipse (x, y, ballSize, ballSize);

  if ((x<width/2) && (y<height/2)) {
    myString = " UL ";
  }
  if ((x<width/2) && (y>height/2)) {
    myString = " LL ";
  }
  if ((x>width/2) && (y<height/2)) {
    myString = " UR ";
  }
  if ((x>width/2) && (y>height/2)) {
    myString = " LR ";
  }

  fill(#32F216);
  String location = "Cursor Location: " + x + "::::" + y; 
  text(location, width/4, height/4);

  String dispTime = "Time-> " + hour() + ":" + minute() + ":" + second();  
  text(dispTime, width/4, (height/4) + 45);


  textFont(myFont);
  textAlign(CENTER);
  textSize(20);
  fill(#537650);
  text(myString, width/2, height/2);
}