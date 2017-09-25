int x = 500;
void setup() {
 size(500,500);
 frameRate(60);
}

void draw() {
 background(#151AD3);
 fill(#EA2643);
 ellipse(x,200,50,50);
 x = x-10;
}