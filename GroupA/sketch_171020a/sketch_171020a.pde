String myString = " Hello Processing +++++++++ ";
String myString1 = "";
String myString2 = " in the middle ";
PFont myFont;
PFont myFont1;


void setup() {
  size(400, 400);
  myFont = loadFont("BradleyHandITC-48.vlw");
  myFont1 = loadFont("Castellar-48.vlw");
}

void draw () {
  background(0);
  myString1 = myString+second();
  textFont(myFont);
  textAlign(CENTER);
  textSize(20);
  fill(#23F711);
  text(myString1, mouseX, mouseY);
 
  textFont(myFont1);
  textAlign(CENTER);
  textSize(20);
  fill(#537650);
  text(myString2, width/2, height/2);
  println(myString1);
}