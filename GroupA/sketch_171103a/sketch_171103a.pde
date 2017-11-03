



void draw() {

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