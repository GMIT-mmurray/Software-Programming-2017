int G = 0; 
int B = 0;
int R = 0;

//G is a global variable

void setup (){
  size (100,300);
  frameRate(10);
}

void draw (){

  background (R,G,B);
  R = R+3;
  B = B+10;
  G = G+2;
  
  println("R ",R, "G ",G,"B ",B);
}