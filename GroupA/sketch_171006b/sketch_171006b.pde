int x = 25;
int d = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(#153ACB);
  // Move x
  x = x+d;
 
  // Method 2
  if ((x >=width-25) || (x<=25)) {
    d = d*-1;
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
  ellipse (x, height/2, 50, 50);
}