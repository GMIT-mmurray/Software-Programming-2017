String myString = "Hello Processing --------- ";
String myString2 = "Goodbye"; 
PFont myFont;
PFont myFont1;

void setup() {
  size(400, 400);
  myFont = loadFont("Perpetua-Italic-48.vlw");
  myFont1= loadFont("PoorRichard-Regular-48.vlw");
}

void draw() {
  background(0);
  String myString1 = myString+second();
  textAlign(CENTER);
  textFont(myFont);
  textSize(25);
  fill(#E5194D);
  text(myString1, mouseX, mouseY);
  textFont(myFont1);
  textSize(10);
  fill(#E5E519);
  text(myString2, mouseX+40, mouseY+70);
}