

// Example 7-5: Zoog with functions


void setup() {
  size(800, 800);
}

void draw() {
  background(255); // Draw a white background
  color c = color(#2A30A5);
  drawZoog(100, 100, 60, 100, 20, c,color(#A52005));
  drawZoog(200, 200, 160, 180, 30, color(#A52AA5),color(#052AA5));
  drawZoog(mouseX, mouseY, 260, 280, 80, color(#342AA5),color(#A52000));
}


void drawZoog(int x, int y, int w, int h, int eyeSize, 
              color eyeColor, color bodyColor) {
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
  stroke(0);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}