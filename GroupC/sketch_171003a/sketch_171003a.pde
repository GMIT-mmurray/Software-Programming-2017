int x = 0;
int d = 1; //Direction

void setup() {
  size(300, 300);
  frameRate(30);
}

void draw() {
  background(#DB16C8);
  if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  line(x, height, x, 0);
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
  if ((x>width) || (x<0)) {
   d = d*-1;    
  }

    println("x=", x, "  d=", d);
}