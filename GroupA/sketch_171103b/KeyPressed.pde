  //moon move on arrows
  void keyPressed () {
  if (key == CODED) {
    if (keyCode == UP) {
      b = b-db;
    }
    if (keyCode == DOWN) {
      b = b+db;
    }
    if (keyCode == LEFT) {
      a = a-da;
    }
    if (keyCode == RIGHT) {
      a = a+da;
    }
  }
}