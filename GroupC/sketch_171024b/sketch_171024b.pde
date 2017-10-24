
void setup() {
  size(480, 270);
}

void draw() {
  background(255); // Draw a white background

  // A color based on distance from the mouse
    color c = color(#182AC4);
    color c1 = color(#C418B3);
    color c2 = color(#C4A718);
  drawZoog(c,240,180,60,60,16,c1,c2);
   c = color(#18C42D);
   c1 = color(#1D18C4);
  drawZoog(c,140,80,60,60,16,c1,c2);
    c = color(#C4B618);
  drawZoog(c,mouseX,mouseY,160,90,16,c1,c2);
}


void drawZoog(color eyeColor,float x, float y, float w, 
              float h,float eyeSize, color handsColor, color legsColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(handsColor);
    line(x - w/4, i, x + w/4, i);
  }
  // Draw Zoog's body
  stroke(legsColor);
  fill(175);
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
  stroke(legsColor);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}