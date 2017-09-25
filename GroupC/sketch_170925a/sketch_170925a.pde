int G = 0; 
int R = 0;
int B = 0;
//G is a global variable

void setup () {
   size(100,300);
   frameRate(2);
}


void  draw () {
  background (R,G,B);
  R = R+10;
  G = G+15;
  B = B+5;
  println("Red value",R);
  println("Green value",G);
  println("Blue value", B);
}