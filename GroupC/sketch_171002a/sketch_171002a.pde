int x = 375;
int y = 375;


void setup() {
  size(400, 400);
  frameRate(50);
  smooth();
}

void draw() {
  background(#0D2F6A);
  // Draw the image
  fill(#FA1726);
  ellipse(x, y, 50, 50);
  fill(#21FA17);
  ellipse(x, y-50, 50, 50);
  fill(#211A17);
  ellipse(x-50, y, 50, 50);
  strokeWeight(5);
  fill(#D324C2);
  rect(x-75, y-75, 50, 50);
  stroke(#E81E1E);
  strokeWeight(1);
  fill(#3AC0D6);
  triangle(x, y, x, y-50, x-50, y);
  // Move the image
  // Method 2
  if (x>75) {
    x = x-1;
    y = y-1;
  }
  // Method 1
  // Test and stop
  //if (x-75 == 0) {
  //  noLoop();
  // }

  println("x = ", x, "y = ", y);
}