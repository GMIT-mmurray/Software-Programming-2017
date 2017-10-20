String myString = " Hello Processing +++++++++ ";
String myString1 = "";

void setup() {
  size(400, 400);
}

void draw () {
  background(0);
  myString1 = myString+second();
  textAlign(CENTER);
  textSize(20);
  fill(#23F711);
  text(myString1, mouseX, mouseY);
  println(myString1);
}