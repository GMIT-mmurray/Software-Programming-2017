// Moving a ball instead of a line

float x = 12.5;
int d = 1; //Direction

void setup() {
  size(300, 300);
  frameRate(30);
}

void draw() {
  background(#DB16C8);
  fill(#1916F5);
    if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  fill(#F51616);
  ellipse(x, height/2, 25, 25);
  x =  x+d;
  //Method 1
  /*  if (x > width) {
   d = d*-1;
   }
   if (x < 0) {
   d = d*-1;
   }
   */

  //Method 2
  if ((x>width-12.5) || (x<12.5)) {
    d = d*-1;
  }

  println("x=", x, "  d=", d);
}