void setup() {
  size(800, 800);
}

void draw() {  
  pushMatrix();  
  translate(mouseX, mouseY);
  scale(.2);
  rotate(radians(-second()*6));
  fill(255, 0, 0);  
  ellipse(0, 0, 25, 25);   
  ellipse(0, 25, 25, 25);  
  ellipse(0, 50, 25, 25);  
  popMatrix();

  ellipse(width/2, height/2, 50, 50);

  pushMatrix();  
  scale(1.5);
  translate(width/6, height/6);
  rotate(radians(270));
  fill(255, 0, 0);  
  ellipse(0, 0, 25, 25);   
  ellipse(0, 25, 25, 25);  
  ellipse(0, 50, 25, 25);  
  popMatrix();
}