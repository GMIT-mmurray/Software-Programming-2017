
int x1 = 475;
int y1 = 475;

void setup() {
  size(500, 500);
  frameRate(60);
//  background(#151AD3);
}

void draw() {
  background(#151AD3);
  
  // Drawing out shape
  strokeWeight(1);
  fill(#26EA3B);
  ellipse(x1, y1, 50, 50);
  fill(#E81C1C);
  ellipse(x1, y1-50, 50,50);
  fill(#1CE8B6);
  ellipse(x1-50, y1, 50,50);
  fill(#E81CC3);
  rect(x1-75,y1-75,50,50,5);
  strokeWeight(5);
  fill(#E8D41C);
  triangle(x1,y1,x1-50,y1,x1,y1-50);
  
  // Moving the complete shape  
  // Method #2
  if (x1 > 75) {
   x1 = x1-1;
   y1 = y1-1;
  }
  
// Method #1  
//  if(x1 < 75) {
//    noLoop();
//  }

  println("x1= ",x1,"y1=  ",y1);
}