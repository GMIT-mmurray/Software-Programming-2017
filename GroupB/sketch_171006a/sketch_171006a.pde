float x = 12.5;
float y = 200;
int dx = 1;
int dy = 1;

void setup() {
  size(400, 400);
}

void draw () {
  background(#3619E3);
// moves the ball in both x and y axis
  x = x+dx;
  y = y+dy;
  
  // check the right and left sides
  if ((x > width-12.5) || (x<12.5)) {
    dx = dx*-1;
  }
  // check the top and bottom
  if ((y > height-12.5) || (y<12.5)) {
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
  ellipse(x,y, 25, 25);

  println(" x=", x, "  dx=", dx, " Y=",y, " dy= ",dy);
}