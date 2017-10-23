PFont myFont;
String myString = "";
void setup() {
  size(400, 400);
  myFont = loadFont("BerlinSansFB-Reg-48.vlw");
}


void draw() {
  background(0);
  fill(255, 0, 0);
  rect(0, 0, 100, 100);
  fill(0, 255, 0);
  rect(100, 100, 100, 100);
  fill(0, 0, 255);
  rect(200, 200, 100, 100);
  fill(255, 255, 255);
  rect(300, 300, 100, 100);
  float R =  red(get(mouseX, mouseY));
  float G =  green(get(mouseX, mouseY));
  float B =  blue(get(mouseX, mouseY));
  if (R == 255 && G == 0 && B == 0) {
    myString = "RED";
    fill(255, 0, 0);
  }
  if (R == 0 && G == 0 && B == 0) {
    myString = "BLK";
    fill(255, 0, 0);
  }
  if (R == 0 && G == 255 && B == 0) {
    myString = "GRN";
    fill(0, 255, 0);
  }  
  if (R == 0 && G == 0 && B == 255) {
    myString = "BLU";
    fill(0, 0,255);
  }  
  if (R == 255 && G == 255 && B == 255) {
    myString = "WHT";
    fill(255, 255, 255);
  }
  textFont(myFont);
  text(myString, 300, 100);
  println("RED = ", R, "GREEN =", G, "BLUE =", B);
}