float x = 12.5;
float y = 200;
int dx = 2;
int dy = 4;
String myString= "";
PFont myFont;

void setup() {
  size(400, 400);
  myFont = loadFont("Perpetua-Italic-48.vlw");
}

void draw () {
  background(#3619E3);

  // moves the ball in both x and y axis
  if (mousePressed == true) {
    x = x+dx;
    y = y+dy;
  }
  // check the right and left sides
  if ((x > width-12.5) || (x<12.5)) {
    dx = dx*-1;
  }
  // check the top and bottom
  if ((y > height-12.5) || (y<12.5)) {
    dy = dy*-1;
  }

  fill(#19E357);
  if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }

  fill(#E34F19);
  // draw the ball
  ellipse(x, y, 25, 25);

  if ((x<width/2) && (y<height/2)) {
    myString = "UL";
  }
  if ((x<width/2) && (y>height/2)) {
    myString = "LL";
  }
  if ((x>width/2) && (y<height/2)) {
    myString = "UR";
  }
  if ((x>width/2) && (y>height/2)) {
    myString = "LR";
  }
  textAlign(CENTER);
  textFont(myFont);
  textSize(25);
  fill(#E5194D);
  text(myString, width/2, height/2);
  
  String location = "Cursor Location: " + x + ":::" + y; 
  text(location,width/3,height/4);
 
  String dispTime = "Time-> " + hour() + ":" + minute() + ":"  + second();  
  text(dispTime,width/3,(height/4) + 45);

  
  println(" x=", x, "  dx=", dx, " Y=", y, " dy= ", dy);
}