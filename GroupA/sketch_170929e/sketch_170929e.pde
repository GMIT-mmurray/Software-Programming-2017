int x = 475;
int y = 475;

void setup() {
  size(500, 500);
}

void draw() {
  background(#17E846);

  //Draw the image
  stroke(#0A0A0A);
  fill(#8FA594);
  ellipse(x, y, 50, 50);
  fill(#658B95);
  ellipse(x, y-50, 50, 50);
  fill(#892C5E);
  ellipse(x-50, y, 50, 50);
  fill(#C97B4D);
  triangle(x, y, x, y-50, x-50, y);
  fill(#C94DC7);
  rect(x-75, y-75, 50, 50);
  stroke(#F7F70F);
  line(x, y-50, x-50, y-50);
  line(x-50, y, x-50, y-50);

  //Move the image
  //Method 2
  if (x > 75) {
    x = x-1;
    y = y-1;
  }
  println("x ",x,"y ",y); 

  // Method 1 
  // if (x == 75) {
  //   noLoop();
  // }
}