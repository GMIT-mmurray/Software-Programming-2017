PImage img;
int x = 202;
int y = 6;
int dx = 1;
int dy = 1;
void setup() {
  size(400, 400);
  img = loadImage("maze.png");
}

void draw() {
  background(255);
  image(img, 0, 0, 400, 400);
  fill(255, 0, 0);
  if (keyPressed == true) {
    if (key == CODED) {
      if (keyCode == UP) {
        y =y-dy;
      }
      if (keyCode == DOWN) {
        y = y+dy;
      }
      if (keyCode == LEFT) {
        x = x-dx;
      }
      if (keyCode == RIGHT) {
        x = x+dx;
      }
    }
  }
  color c = get(x,y);
  float R = red(c);
  float G = green(c);
  float B = blue(c);
  if (R < 255) {
   x = 203;
   y = 6;
  }
  println(" Red ", R,"green ",G, "Blue ", B);
  ellipse(x, y, 10, 10);
  if ((x > 176) && (x < 226) && (y > 396)) {
    textSize(30);
    text(" I am Out ", width/2, height/2);
  }
//  println(" X= ", mouseX, "y = ", mouseY);
}