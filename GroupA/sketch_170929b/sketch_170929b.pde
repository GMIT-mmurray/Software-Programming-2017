int x = 400;
int y = 0;
int x1 = 0;
int y1 = 400;

void setup() {
  size(400, 400);
  background(48, 47, 178);
}

void draw() {
 // background(48, 47, 178);
  fill(#E83317);
  ellipse(x, y, 50, 50);
  fill(#17E846);
  ellipse(x1, y1, 50,50);
  
  x = x-1;
  y = y+1;
  x1 = x1+1;
  y1 = y1-1;
  
  println("x ", x, "y ",y,"x1 ",x1,"y1 ",y1);
}