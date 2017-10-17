String myString;
String location;
String dispTime;
PFont myFont;

void setup() {
  size(400, 400);
  myFont = loadFont("BellMTItalic-48.vlw");
}
void draw() {
  background(#312A2A);
  if ((mouseX < width/2) && (mouseY <height/2)) {
    myString = "UL";
  }
  if ((mouseX >width/2) && (mouseY <height/2)) {
    myString = "UR";
  }
  if ((mouseX >width/2) && (mouseY >height/2)) {
    myString = "LR";
  }
  if ((mouseX <width/2) && (mouseY >height/2)) {
    myString = "LL";
  }
  fill(#34B952);
  ellipse(mouseX,mouseY, 70,70);
  textFont(myFont);
  textAlign(CENTER);
  textSize(20);
  fill(#E81010);
  text(myString,mouseX,mouseY);
  fill(#343CB9);
  location = "Cursor Location: " + mouseX + "::" + mouseY;
  text(location,width/2,height/2);
  dispTime = "Time-> " + hour() + ":" + minute() + ":" + second();
  text(dispTime,width/2,(height/2) + 45);
 }