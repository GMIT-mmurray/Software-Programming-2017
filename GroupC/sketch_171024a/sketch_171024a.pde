color c1;
color c2;

void setup () {
  size(400, 400);
}

void draw() {
  c1 = color(#E31919);
  c2 = color(#192FE3);
  drawEllipse(c1, 10, c2,width/2, height/2, 100, 70);
  drawEllipse(c2, 5, c1,width/4, height/4, 80, 70);
}

void drawEllipse(color value, int value1, color value2,int x, int y, int dx, int dy) {
  fill(value);
  stroke(value2);
  strokeWeight(value1);
  ellipse(x, y, dx, dy);
}