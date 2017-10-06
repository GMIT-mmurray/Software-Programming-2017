int x = 12;
int y = 200;
int dx = 1;
int dy = 1;

void setup() {
  size(400, 400);
}

void draw () {
  background(#3619E3);
 
  if (keyPressed == true) {
    if (key == CODED) {
      if (keyCode == UP){
       y = y-dy;
      }
      if (keyCode == DOWN){
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

  // check the right and left sides
  if ((x >= width-12) || (x<=12)) {
    dx = dx*-1;
  }
  // check the top and bottom
  if ((y >= height-12) || (y<=12)) {
    dy = dy*-1;
  }    

  fill(#19E357);
  if (x < width/2) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  fill(#E34F19);

  // draw the ball
  ellipse(x, y, 24, 24);

  println(" x=", x, "  dx=", dx, " Y=", y, " dy= ", dy, keyPressed);
}