PImage img;
int x = 0;
int y = 0;
int dx = 1;
int dy = 1;
void setup() {
  size(400,400);
  img = loadImage("maze.png");
}
 
void draw() {
  background(255);
  image(img,0,0,400,400);
  fill(255,0,0);
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
  ellipse(x,y,10,10);
}
  