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

PFont myfont;
void setup() {
  size(600, 600);

  //myfont = loadFont("OldEnglishTextMT-48.vlw");
}
void draw() {
  background(#000000);
  //date and time
  String mystring1 = "Time:" + hour()+ ":" + minute() + ":" + second();
  //textAlign(CENTER);
  textSize(20);
  text(mystring1, width/2, height/8);
  String mystring2 = "Date:" + day() + "," + month() + "," + year();
  textSize(20);
  text(mystring2, width/2, height/6);
  String mystring3;
  textAlign(CENTER);
  textSize(20);

  //Pumkin
  drawPunkin();
  x = x+dx;     
  y = y+dx;
  //pumkin move
  if ((x <= 0)||(x >= 200)) {
    dx = dx*-1;
  }
  if ((y <= 0)||(y >= height)) {
    dy = dy*-1;
  }
  //Moon
  if (x < 150) {
    drawNiceMoon();
  } else {
    //Evil moon
    drawBadMoon();
  }


  //moon hit of wall
  fill(#FFFFFF);
  if ((a <= 50) || (a >= 550)) {
    da = da*-1;
  }
  if ((b <= 50) || (b >=550)) {
    db = db*-1;
  }
  //moon hit notice
  if (a <= 50) {

    //    textFont(myfont);
    mystring3 = "Moon Hit Left";
    text(mystring3, width/2, height/2);
    //delay(5000);
  }
  if (a >= 550) {

    //    textFont(myfont);
    mystring3 = "Moon Hit Right";
    text(mystring3, width/2, height/2);
    //delay(5000);
  }
  if (b <=50) {

    //    textFont(myfont);
    mystring3 = "Moon Hit Top";
    text(mystring3, width/2, height/3);
    //delay(5000);
  }
  if (b >= 550) {

    //    textFont(myfont);
    mystring3 = "Moon Hit Bottom";
    text(mystring3, width/2, height/3);
    //delay(5000);
  }
}