PImage maze;
int x = 191;
int y = 0;
int dx = 1;
int dy = 1;

void setup() {
  size(400, 400);
  maze = loadImage("maze.png");
}

void draw() {
  background(0);
  image(maze, 0, 0, width, height);
  float R =red(get(x, y));
  float G =green(get(x, y));
  float B =blue(get(x, y));
  if (R<255 || G<255 || B<255) {
   x = 191;
   y = 0;
  }
  println("Red ", R, "Green ", G, "Blue ", B, "mouseX ",mouseX, "mouseY ", mouseY);
  if (keyPressed == true) {
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
  fill(255,0,0);
  ellipse(x, y, 5, 5);
}