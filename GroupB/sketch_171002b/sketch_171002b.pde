float x = 12.5;
int d = 1;

void setup() {
  size(400, 400);
}

void draw () {
  background(#3619E3);

  x = x+d;
 
  //Method 2
  if ((x > width-12.5) || (x<12.5)) {
    d = d*-1;
  }
  fill(#19E357);
  if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  fill(#E34F19);
  ellipse(x, height/2, 25, 25);

  println(" x ", x, "  d ", d);
}