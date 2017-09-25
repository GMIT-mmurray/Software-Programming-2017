int R = 67;
int G = 229;
int B = 180;

//G is a global variable

void setup () {
  size (100,300);
  frameRate(10);
}

void draw () {
background(R,G,B);
R = R+5;
G = G+5;
B = B+5;
println("R ",R, " G ",G, "B ", B);
ellipse(50,50,10,10);
}