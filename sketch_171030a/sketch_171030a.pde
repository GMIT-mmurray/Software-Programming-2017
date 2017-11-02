float x = 300;
float y = 300;
int dx = 1;
int dy = 1;
String dispTime;
String HIT;
String location;
PImage img1;
PFont myFont;
boolean leftwallhit;
boolean rightwallhit;
boolean topwallhit;
boolean bottomwallhit;
int startTime;

final int delay = 5000; // 5s

void setup () {
 size(600, 600);
//  myFont = loadFont("ComicSansMS-Bold-60.vlw");
 // img1 = loadImage("Cartoon-colorful-mushrooms.jpg");
//  frameRate(1000);
}


void draw () {
  background(#312A2A);
//  image(img1, 0, 0, 600, 600);
  stroke(#F1F211);
  //textFont(myFont);
  fill(#F1F211);
  rect(x-30, y+130, 65, 150, 10); // body
  stroke(#0C7624);
  fill(#0C7624);
  arc(x, y, 300, 300, 0, PI, CHORD); // bottom half
  triangle(x-25, y+130, x+5, y+130, x-10, y+140);
  fill(#E05717);
  stroke(#E05717);
  triangle(x-60, y-100, x-100, y-40, x-190, y-190); // hair l1
  triangle(x-100, y-80, x-10, y-130, x-90, y-170); // hair l2
  triangle(x-40, y-100, x+60, y-100, x-10, y-220); // hair mid
  triangle(x+10, y-100, x+100, y-70, x+60, y-170); // hair r1
  triangle(x+20, y-80, x+125, y-40, x+150, y-190); // hair r2
  fill(#11952E);
  stroke(#11952E);
  arc(x, y, 270, 270, PI, TWO_PI); // top half
  noStroke();
  fill(#FFFFFF);
  ellipse(x-35, y-60, 80, 80); // left eye
  ellipse(x+35, y-60, 80, 80); // right eye
  stroke(#000000);
  strokeWeight(20);
  point(x-30, y-40); // left pupil
  point(x+40, y-70); // right pupil
  stroke(#F2F5B4);
  fill(#F2F5B4);
  strokeWeight(5);
  triangle(x-110, y-4, x-80, y-4, x-100, y-30); // left tooth
  triangle(x+80, y-4, x+110, y-4, x+105, y-30); // right tooth
  fill(#1883A0);
  noStroke();
  rect(x-31, y+250, 68, 30); // trousers
  stroke(#FFFFFF);
  strokeWeight(4);
  fill(#4905AA);
  triangle(x-100, y+280, x-10, y+280, x-80, y+260); // left shoe
  triangle(x+10, y+280, x+100, y+280, x+80, y+260); // right shoe
  stroke(#000000);
  strokeWeight(2);
  line(x, y+279, x, y+250); // v trousers line
  line(x-30, y+250, x+35, y+250); // h trousers line
  stroke(#0C7624);
  fill(#0C7624);
  ellipse(x-70, y+190, 25, 25); // left hand
  ellipse(x+75, y+190, 25, 25); // right hand
  fill(#F1F211);
  stroke(#F1F211);
  strokeWeight(2);
  quad(x-30, y+150, x-20, y+160, x-60, y+200, x-80, y+180); // left arm
  quad(x+35, y+150, x+25, y+160, x+65, y+200, x+85, y+180); // right arm
  noFill();
  stroke(#11952E);
  ellipse(x-120, y+28, 20, 20); // spot l2r 1
  ellipse(x-60, y+80, 8, 8); // spot l2r 2
  ellipse(x+12, y+60, 15, 15); // spot l2r 3
  ellipse(x+42, y+100, 20, 20);  // spot l2r 4
  ellipse(x+94, y+38, 7, 7); // spot l2r 5
  println("x=", x, "y=", y);
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
        x = x-dx;
      }
    }
  }


  if ((x>449) || (x<189)) {
    dx = dx*-1;
  }
  if ((y>317) || (y<224)) {
    dy = dy*-1;
  }
  textSize(50);
  textAlign(CENTER);
  fill(#000000);
  if (x<190) {
    HIT = "Left wall hit";
    leftwallhit = true;
    startTime = millis();
  }
  if (leftwallhit) {
    text(HIT, width/2, height/2);
    if (millis() - startTime > delay)
      leftwallhit = false;
  }

 if (x>448) {
    HIT = "Right wall hit";
    rightwallhit = true;
    startTime = millis();
  }

  if (rightwallhit) {
    text(HIT, width/2, height/2);
    if (millis() - startTime > delay)
      rightwallhit = false;
  }

  if (y<224) {
    HIT = "Top wall hit";
    topwallhit = true;
    startTime = millis();
  }

  if (topwallhit) {
    text(HIT, width/2, height/2);
    if (millis() - startTime > delay)
      topwallhit = false;
  }


  if (y>316) {
    HIT = "Bottom wall hit";
    bottomwallhit = true;
    startTime = millis();
  }

  if (bottomwallhit) {
    text(HIT, width/2, height/2);
    if (millis() - startTime > delay)
      bottomwallhit = false;
  }

  textSize(18);
  fill(#150FF0);
  dispTime = "Whats the time Mr. Wolf? -> " + hour() + ":" + minute() + ":" + second();
  text(dispTime, 425, 20);
}