
int x = 0;

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
  x = x+1;
  if (x > width) {
    x = 0;
  }
}