PImage maze;
int x = 0;
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
  float R =red(get(mouseX, mouseY));
  float G =green(get(mouseX, mouseY));
  float B =blue(get(mouseX, mouseY));
  println("Red ", R, "Green ", G, "Blue ", B);
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
  ellipse(x,y,20,20);
  
}