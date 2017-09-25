int x = 0;
int y = 0;
int x1 = 400;
int y1 = 400;

void setup() {
 size(400,400);
 frameRate(50);
 smooth();
}

void draw() {
 background(#0D2F6A);
 
 fill(#FA1726);
 ellipse(x,y,50,50);
 fill(#21FA17);
 ellipse(x1,y1,50,50);
  
 x = x+5;
 y = y+5;
 x1 = x1-5;
 y1 = y1-5;
 
 println("x = ",x, "y = ",y,"x1 = ",x1, "y1 = ",y1);

}