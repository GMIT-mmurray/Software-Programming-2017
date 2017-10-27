void setup() {
 size(600,600); 
}

void draw() {
 background(255); 
 drawMyEllipse(200,200,100,80,color(#F52525),color(#2538F5),5);
 drawMyEllipse(400,300,60,120,color(#F5ff25),color(#2500F5),10);
 drawMyEllipse(mouseX,mouseY,120,60,color(#052525),color(#2500F5),20);
}

void drawMyEllipse(int x,int y, int dx,int dy, color f, color s, int sw) {
  fill(f);
  stroke (s);
  strokeWeight(sw);
  ellipse(x,y,dx,dy);
}