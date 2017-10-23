PImage myImage;
String myString = "";
int x = 236;
int y = 20;
int dx = 2;
int dy = 2;

void setup() {
  size(400, 400);
  myImage = loadImage("maze.png");
}

void draw() {
  background(255, 255, 255);
  image(myImage, 0, 0, width, height);
  float R =  red(get( mouseX, mouseY));
  float G =  green(get(mouseX, mouseY));
  float B =  blue(get(mouseX, mouseY));
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
        x = x-dx;
      }
    }
  }
  ellipse(x,y,20,20);

  if (R == 0 && G == 0 && B == 0) {
    myString = "BLK";
    fill(255, 0, 0);
  }
  if (R == 255 && G == 255 && B == 255) {
    myString = "WHT";
    fill(0, 0, 0);
  }
  text(myString, 300, 100);
  println("RED = ", R, "GREEN =", G, "BLUE =", B, "  ", mouseX, "   ",mouseY);
}