int x = 0;
int y = 0;
int dx = 1;
int dy = 1;

void setup() {
  size(500, 500);
  frameRate(60);
}

void draw() {
  background(0);
  ellipse(x, y, 50, 50); 
  println(" x = ", x, " y = ", y);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y-dy;
    }
    if (keyCode == DOWN) {
      y = y+dy;
    }
    if (keyCode == RIGHT) {
      x = x+dx;
    }
    if (keyCode == LEFT) {
      x =x-dx;
    }
  }
}