

// Example 7-5: Zoog with functions

void setup() {
  size(800, 800);
}

void draw() {
  background(255); // Draw a white background
  color c = color(#0C1CBF);
  drawZoog(249, 180, 60, 60, 16, c,color(#9DBF0C),color(#00BF0C));
  drawZoog(149, 180, 100, 120, 30, color(#BF0C26),color(#F5BB4F),color(#9D000C));
}


void drawZoog(int x, int y, int w, int h, int eyeSize,
              color eyeColor, color bodyColor, color legColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(0);
    line(x - w/4, i, x + w/4, i);
  }
  // Draw Zoog's body
  stroke(0);
  fill(bodyColor);
  rect(x, y, w/6, h);
  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x, y - h, w, h);
  // Draw Zoog's eyes
  fill(eyeColor);
  ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
  ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
  // Draw Zoog's legs
  stroke(legColor);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}