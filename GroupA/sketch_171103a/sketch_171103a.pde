int x=0;
int y=0;
int dx=1;
int dy=1;

void setup() {
  size(400,400);
}



void draw() {
  ellipse(x,y,50,50);
  println("x ",x,"y ",y);
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
}