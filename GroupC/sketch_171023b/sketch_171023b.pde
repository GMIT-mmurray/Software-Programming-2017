PImage myImage;
String myString = "";

void setup() {
  size(400, 400);
  myImage = loadImage("maze.png");
}

void draw() {
  background(255, 255, 255);
  image(myImage, 0, 0, width, height);
  float R =  red(get(mouseX, mouseY));
  float G =  green(get(mouseX, mouseY));
  float B =  blue(get(mouseX, mouseY));

  if (R == 0 && G == 0 && B == 0) {
    myString = "BLK";
    fill(255, 0, 0);
  }
  if (R == 255 && G == 255 && B == 255) {
    myString = "WHT";
    fill(0, 0, 0);
  }
  text(myString, 300, 100);
  println("RED = ", R, "GREEN =", G, "BLUE =", B);
}