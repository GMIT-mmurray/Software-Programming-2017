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

  float R =  red(get( x, y));
  float G =  green(get(x, y));
  float B =  blue(get(x, y));
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

  if (R < 255 || G < 255 || B <255 ) {
    x = 236;
    y = 20;
  }

  ellipse(x, y, 10, 10);


  println("RED = ", R, "GREEN =", G, "BLUE =", B, "  ", mouseX, "   ", mouseY);
}