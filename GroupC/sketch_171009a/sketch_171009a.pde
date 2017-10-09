float x = 12.5;
float y = 200;
int dx = 1; //Direction x
int dy = 1; // Direction y

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
  ellipse(x, y, 25, 25);

  if (keyPressed == true) {
    if ((key == 'a') || (key == 'A')) {
      x = x+dx;
      y = y+dy;
    }
  }

  if ((x>width-12.5) || (x<12.5)) {
    dx = dx*-1;
  }
  if ((y>height-12.5) || (y<12.5)) {
    dy = dy*-1;
  }
  println("x=", x, " y= ", y, " dx= ", dx, "  dy=", dy);
}