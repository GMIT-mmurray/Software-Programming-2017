void keyPressed() {
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