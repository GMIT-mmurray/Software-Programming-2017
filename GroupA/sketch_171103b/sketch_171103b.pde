//have to launch it few times so that it'll work properly. Don't know why this is happening.
int y = 150;
int dx = 1;
int dy = 1;
int x = 100;
int ballsize = 100;
int ballradius = ballsize/2;
int a = ballradius;
int b = 50;
int da = 1;
int db = 1;
String mystring1 = "";
String mystring2 = "";
String mystring = "";
String mystring3;
int startTime;
int displayTime = 5000;
int stopTime;
boolean hitWall = false;

PFont myfont;
void setup() {
  size(600, 600);

  //myfont = loadFont("OldEnglishTextMT-48.vlw");
}
void draw() {
  background(#000000);
  displayDateAndTime();
  //Pumkin
  drawPunkin();
  x = x+dx;     
  y = y+dy;
  //pumkin move
  if ((x <= 0)||(x >= 200)) {
    dx = dx*-1;
  }
  if ((y <= 0)||(y >= 350)) {
    dy = dy*-1;
  }
  //Moon
  if (x < 150) {
    drawNiceMoon();
  } else {
    //Evil moon
    drawBadMoon();
  }

  println(" a", a, "  b", b);
  //moon hit of wall
  fill(#FFFFFF);
  //moon hit notice
  if (a < 50) {
    a =50;
    hitWall = true;
    //    textFont(myfont);
    mystring3 = "Moon Hit Left";
    startTime = millis();
    stopTime = startTime+displayTime;
  }
  if (a > 550) {
    a = 550;
    hitWall = true;
    //    textFont(myfont);
    mystring3 = "Moon Hit Right";
    startTime = millis();
    stopTime = startTime+displayTime;
  }
  if (b <50) {
    b = 50;
    hitWall = true;
    //    textFont(myfont);
    mystring3 = "Moon Hit Top";
    startTime = millis();
    stopTime = startTime+displayTime;
  }
  if (b >= 550) {
    b=550;
    hitWall = true;
    //    textFont(myfont);
    mystring3 = "Moon Hit Bottom";
    startTime = millis();
    stopTime = startTime+displayTime;
  }
  if (hitWall == true && millis() < stopTime) {
    textSize(20);
    text(mystring3, 300,300);
  } else {
    hitWall = false;  
  }
}