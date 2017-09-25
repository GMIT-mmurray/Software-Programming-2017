int x = 0;
int y = 0;
int x1 = 500;
int y1 = 500;

void setup() {
  size(500, 500);
  frameRate(60);
//  background(#151AD3);
}

void draw() {
  background(#151AD3);

  fill(#EA2643);
  ellipse(x, y, 50, 50);
  fill(#26EA3B);
  ellipse(x1, y1, 50, 50);

  y = y+1 ;
  x = x+1 ;
  y1 = y1-1 ;
  x1 = x1-1 ;
}