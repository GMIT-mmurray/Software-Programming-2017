String myString = "Hello Processing --------- ";

void setup() {
  size(400,400);
}

void draw() {
  background(0);
  String myString1 = myString+" "+second();
  textAlign(CENTER);
  text(myString1,width/2,height/2);
  println(myString1);
}