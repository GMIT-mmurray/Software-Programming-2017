int x = 300;
int y = 200;
int dx = 1;
int dy = 1;
PImage BG;
String Up = " Up ";
String Bottom = " Bottom ";
String Left = " Left ";
String Right = " Right ";
PFont font;

void setup() {
  size(600, 600);
  background(#FF0303);
  frameRate(60);
//  BG = loadImage("sprial.png");
//  font = loadFont("BodoniMTCondensed-BoldItalic-48.vlw");
}

void draw() {
  if (keyPressed == true) {
    if (key == CODED) {
      if (keyCode == UP) {
        y = y-dy;
      }
      if (keyCode == DOWN) {
        y = y+dy;
      }
      if (keyCode == RIGHT) {
        x = x+dx;
      }
      if (keyCode == LEFT) {
        x =x-dx;
      }
    }
  }

  background(0);
  strokeWeight(1);
  fill(#FFFFFF);
  quad(x-110, y+220, x-50, y-10, x+120, y+220, x+60, y-10);
  quad(x-110, y+200, x-50, y-10, x+120, y+200, x+60, y-10);
  quad(x-110, y+180, x-50, y-10, x+120, y+180, x+60, y-10);
  quad(x-110, y+140, x-50, y-10, x+120, y+140, x+60, y-10);
  fill(#1E07F5);
  noStroke();
  arc(x, y-55, 90, 130, radians(-70), radians(250));
  ellipse(x, y-55, 50, 60);
  fill(#FFF300);
  ellipse(x+25, y-60, 20, 10);
  ellipse(x-25, y-60, 20, 10);
  fill(#FF0000);
  ellipse(x-25, y-60, 5, 10);
  ellipse(x+25, y-60, 5, 10);
  fill(#FFFCFC);
  ellipse(x, y-20, 40, 20);
  fill(#050000);
  triangle(x-15, y-15, x-20, y-25, x-10, y-30);
  triangle(x+10, y-15, x+10, y-29, x+20, y-25);
  stroke(0);
  strokeWeight(15);
  line(x, y+25, x, y);
  strokeWeight(15);
  line(x+30, y+60, x+130, y+100);
  line(x-30, y+60, x-120, y+100);
  line(x+30, y+150, x+60, y+260);
  line(x+30, y+150, x+60, y+260);
  line(x-30, y+150, x-40, y+260);
  noStroke();
  fill(#1E07F5);
  ellipse(x, y+100, 80, 150);
  stroke(1);
  strokeWeight(5);
  noFill();
  ellipse(x, y+110, 50, 100);
  fill(#1E07F5);
  rect(x+40, y+250, 60, 30, 20);
  rect(x-85, y+250, 60, 30, 20);
  println("x= ", x, "y= ", y);
  fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
//  textFont(font);
  String dispTime = "Time-> " + hour() + ":" + minute() + ":"  + second(); 
  text(dispTime, width-150, (height-550) + 45);
  String dispdate = "Date-> " + day() + ":" + month() + ":"  + year(); 
  text(dispdate, width-150, (height-520) + 45);
  if (x > width-135) {
    x = width-135;
    textAlign(CENTER);
 //   textFont(font);
    textSize(50);
    text(Right, width/2, height-20);
  }
  if (x < 125) {
    x = 125;
    textAlign(CENTER);
 //   textFont(font);
    textSize(50);
    text(Left, width/2, height-20);
  }

  if (y > height-282) {
    y = height-282;
//    textFont(font);
    textAlign(CENTER);
    textSize(50);
    text(Bottom, width/2, height-20);
  }

  if (y < 116) {
    y = 116 ;
//    textFont(font);
    textAlign(CENTER);
    textSize(50);
    text(Up, width/2, height-20);
  }
}