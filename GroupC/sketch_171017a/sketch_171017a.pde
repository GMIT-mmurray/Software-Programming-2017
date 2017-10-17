String myString = " Hello Processing again ";
PFont myFont;
PFont myFont1;

void setup() {
  size(400,400);
  myFont = loadFont("BellMTItalic-48.vlw");
}

void draw() {
  background(#312A2A);
  println (myString);
  textFont(myFont);
  fill(#E81010);
  textAlign(CENTER);
  textSize(20);
  text(myString,mouseX,mouseY);
}
  
  