PImage img;

void setup() {
  size(400,400);
  img = loadImage("maze.png");
}
 
void draw() {
  background(255);
  image(img,0,0,400,400);
}
  