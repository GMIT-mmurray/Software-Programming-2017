color c1;
color c2;

void setup() {
  size(400,400);
}


void draw() {
  background(0);
  c1 = color(#F21111);
  c2 = color(#113FF2);
  drawEllipse(100,100,40,80,c1,c2,8);
  drawEllipse(200,200,100,100,c2, c1,10);
  drawEllipse(mouseX,mouseY,80,20,color(#11F234),color(#F2EB11),4);
//  drawEllipse();
}


void drawEllipse(int x,int y,int dx,int dy, color f,color s, int sw) {
  fill(f);
  stroke(s);
  strokeWeight(sw);
  ellipse(x,y,dx,dy);
}