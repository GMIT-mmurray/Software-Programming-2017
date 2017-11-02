int x1 = 300;
int y1 = 300;
int dx = 1;
int dy = 1;
PImage img;
PFont font;
boolean wallHit = false;
int startTime;
int displayTime = 5000;
String string = "";
int x = x1;
int y = y1;


void setup()
{
  size(600, 600);
  frameRate(30);
  //  img = loadImage("img.jpg");
  // font = loadFont("Pristina-Regular-48.vlw");
}


void draw () 
{
 // string = "";
  x = x1;
  y = y1;
  background(0);
  //date and time
  fill(#B9B172);
  textAlign(CENTER);
  // textFont(font);
  textSize(25);
  text(day() + "/" + month() + "/" + year(), 500, 50);
  text(hour() + ":" + minute() + ":" + second(), 500, 75);

  if ((x1>=width-151) || (x1<=151))
  {
    dx=dx*-1;
  }

  if ((y1>=height-271) || (y1<=276))
  {
    dy=dy*-1;
  }

  fill(#67270E); //colour of body
  stroke(#521113);
  quad(x1-150, y1-150, x1+150, y1-150, x1+100, y1+150, x1-100, y1+150); //body
  ellipse(x1, y1-150, 150, 250); //head
  rect(x1-125, y1-100, 50, 200, 20);
  rect(x1+75, y1-100, 50, 200, 20);
  fill(#B4813E); //colour of teeth
  triangle(x1-40, y1-100, x1-20, y1-100, x1-30, y1-80); //teeth
  triangle(x1-20, y1-100, x1, y1-100, x1-10, y1-80);
  triangle(x1, y1-100, x1+20, y1-100, x1+10, y1-80);
  triangle(x1+20, y1-100, x1+40, y1-100, x1+30, y1-80);
  fill(#FC0F13); //eye colour
  arc(x1-30, y1-180, 45, 45, 0, PI+QUARTER_PI, CHORD); //eyes
  arc(x1+30, y1-180, 45, 45, radians(-45), radians(180), CHORD);
  strokeWeight(5);
  point(x1+30, y1-180); //puipl
  point(x1-30, y1-180);
  line(x1-10, y1-140, x1-10, y1-120); //nose
  line(x1, y1-140, x1, y1-120);
  line(x1+10, y1-140, x1+10, y1-120);
  noStroke();
  fill(#67270E);
  rect(x1-80, y1+100, 75, 170);//legs
  rect(x1+5, y1+100, 75, 170);
  strokeWeight(1);
  stroke(#000000);
  fill(#B9B172);
  ellipse(x1, y1+50, 100, 125);
  noFill();
  ellipse(x1, y1+50, 90, 115); //consentric pattern
  ellipse(x1, y1+50, 80, 105);
  ellipse(x1, y1+50, 70, 95);
  ellipse(x1, y1+50, 60, 85);
  ellipse(x1, y1+50, 50, 75);
  ellipse(x1, y1+50, 40, 65);
  ellipse(x1, y1+50, 30, 55);
  ellipse(x1, y1+50, 20, 45);
  ellipse(x1, y1+50, 10, 35);

  // delay and string



  if (string !=""  && wallHit == true)
  {
    if (millis() - startTime < displayTime) {
      textAlign(CENTER);
      textSize(50);
      fill(#FFFFFF);
      text(string, width/2, height/2);
    } else {
      wallHit = false;
    }
  }
  //println ("start Time ", startTime, "mS", millis());
  println ("x ", x1, "y", y1);
  //add in delay here?
}


void keyPressed()

{

  if (keyPressed) {

    if (key == CODED) {

      if (keyCode == UP) {

        y1= y1-dy;
      }
    }
  }  

  if (keyCode == DOWN) {

    y1 = y1+dy;
  }

  if (keyCode == RIGHT) {

    x1= x1+dx;
  }

  if (keyCode == LEFT) {

    x1 = x1-dx;
  }

  if (x >= width-151)
  {
    wallHit = true;
    string = "Right";
    startTime = millis();
    x = width-151;
  }
  if (x <= 151)
  {
    wallHit = true;
    string = "Left";
    startTime = millis();
    x = 151;
  }
  if (y >= height-271)
  {
    wallHit = true;
    string = "Bottom";
    startTime = millis();
    y = height-271;
  }
  if (y == 276)
  {
    wallHit = true;
    string = "Top";
    startTime = millis();
    y = 276;
  }
}