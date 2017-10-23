String myString = " Hello Processing again ";
String myString1 = " The Band ";
PFont myFont;
PFont myFont1;

void setup() {
  size(400,400);
  myFont = loadFont("BellMTItalic-48.vlw");
  myFont1 = loadFont("Corbel-BoldItalic-48.vlw");
}

void draw() {
  background(#312A2A);
  println (myString);
  textFont(myFont);
  fill(#E81010);
  textAlign(CENTER);
  textSize(20);
  text(myString,mouseX,mouseY);
  textFont(myFont1);
  if (keyPressed == true) {
  text(myString1+key,mouseX+40,mouseY+40);
  }
}
  
  