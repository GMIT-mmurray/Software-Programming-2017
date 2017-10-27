void setup() {
  size(400,400);
}


void draw() {
  background(0);
  drawEllipse(100,100,40,80,170,0,8);
  drawEllipse(200,200,100,100,90, 255,10);
  drawEllipse(mouseX,mouseY,80,20,20,150,30);
//  drawEllipse();
}


void drawEllipse(int x,int y,int dx,int dy,int f,int s, int sw) {
  fill(f);
  stroke(s);
  strokeWeight(sw);
  ellipse(x,y,dx,dy);
}