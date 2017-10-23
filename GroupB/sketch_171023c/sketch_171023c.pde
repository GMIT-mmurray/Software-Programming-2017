PImage maze;

void setup() {
  size(400,400);
  maze = loadImage("maze.png");
}

void draw() {
  background(0);
  image(maze,0,0,width,height);
}