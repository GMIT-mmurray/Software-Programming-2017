int x = 0;
int y = 0;

void setup() {
 size(400,400);
 frameRate(50);
 smooth();
}

void draw() {
 background(#0D2F6A);
 fill(#FA1726);
 ellipse(x,y,50,50);
 x = x+5;
 y = y+1;
 println("x = ",x, "y = ",y);

}