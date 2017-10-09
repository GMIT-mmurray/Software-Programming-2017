int y = 200;
int dx = 1;
int dy = 1;
int ballSize = 100;
int ballRadius = ballSize/2;
int x = ballRadius;


void setup() {
  size(500, 500);
}

void draw() {
  background(#153ACB);
  // Move x and y
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

  // Method 2
  if ((x >=width-ballRadius) || (x<ballRadius)) {
    dx = dx*-1;
  }
  if ((y >= height-ballRadius) || (y<ballRadius)) {
    dy = dy*-1;
  }

  if (x < width/2) {
    fill(#15CB34);
    ellipse(width/2, height/2, 100, 100);
  } else {
    fill(#3F4840);
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  }
  //draw the line
  fill(#ED2644);
  ellipse (x, y, ballSize, ballSize);
  println(" X ", x);
}