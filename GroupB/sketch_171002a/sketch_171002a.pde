int x = 0;
int d = 1;

void setup() {
  size(400, 400);
}

void draw () {
  background(#3619E3);

  x = x+d;
  //Method 1
  /*  if (x>width) {
   d = d*-1;
   }
   if (x<0) {
   d = d*-1;
   }
   */

  //Method 2
  if ((x > width) || (x<0)) {
   d = d*-1;    
  }
    if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  line(x, 0, x, height);

  println(" x ", x, "  d ", d);
}