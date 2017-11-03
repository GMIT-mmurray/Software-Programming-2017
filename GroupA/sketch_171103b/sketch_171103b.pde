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
void setup(){
size(600,600);

//myfont = loadFont("OldEnglishTextMT-48.vlw");
}
void draw() {
background(#000000);
//date and time
String mystring1 = "Time:" + hour()+ ":" + minute() + ":" + second();
//textAlign(CENTER);
textSize(20);
text(mystring1,width/2,height/8);
String mystring2 = "Date:" + day() + "," + month() + "," + year();
textSize(20);
text(mystring2,width/2,height/6);
String mystring3;
textAlign(CENTER);
textSize(20);

//Pumkin
fill(#F56614);
rect(x,y,400,250,110);
line(x+285,y,x+285,y+250);
line(x+235,y,x+235,y+250);
line(x+185,y,x+185,y+250);
line(x+135,y,x+135,y+250);
line(x+85,y,x+85,y+250);
line(x+35,y,x+35,y+250);
line(x+335,y,x+335,y+250);
line(x+385,y,x+385,y+250);
fill(#045500);
quad(x+185,y-30,x+195,y-30,x+205,y,x+175,y);
fill(#D36B02);
triangle(x+100,y+50,x+140,y+50,x+120,y+100);
triangle(x+250,y+50,x+290,y+50,x+270,y+100);
arc(x+200,y+150,200,100,TWO_PI,PI + TWO_PI,CHORD);
fill(#F56614);
rect(x+210,y+150,15,15);
rect(x+180,y+150,15,15);
rect(x+240,y+150,15,15);
rect(x+150,y+150,15,15);
rect(x+165,y+183,15,15,0,0,0,5);
rect(x+195,y+184,15,15);
rect(x+225,y+183,15,15,0,0,5,0);
     x = x+dx;     
     y = y+dx;
     //pumkin move
if((x <= 0)||(x >= 200)){
  dx = dx*-1;
 }
 if((y <= 0)||(y >= height)) {
  dy = dy*-1;
 }
 //Moon
if (x < 150){
  fill(#E8E8E8);
  ellipse(a,b,ballsize,ballsize);
  fill(#D8D8D8);
  ellipse(a-30,b+10,5,10);
  ellipse(a-20,b-20,10,10);
  ellipse(a-10,b+30,10,7);
  ellipse(a,b-30,10,10);
  ellipse(a+10,b,6,10);
  ellipse(a+20,b+20,10,10);
  ellipse(a+30,b+30,10,8);
  ellipse(a+30,b-30,10,10);
  ellipse(a+40,b,9,10);}
else {
  //Evil moon
  fill(#FF0000);
  ellipse(a,b,ballsize,ballsize);
  triangle(a-25,b-45,a-20,b-60,a-15,b-45);
  triangle(a+15,b-45,a+20,b-60,a+25,b-45);
  fill(#000000);
  ellipse(a-20,b-20,25,25);
  ellipse(a+20,b-20,25,25);
  arc(a,b+10,60,50,TWO_PI,PI + TWO_PI,CHORD);
  fill(#FF0000);
  ellipse(a-20,b-20,10,10);
  ellipse(a+20,b-20,10,10);
  }
  //moon move on arrows
if (keyPressed == true) {
    if (key == CODED) {
      if (keyCode == UP) {
        b = b-db;
      }
      if (keyCode == DOWN) {
        b = b+db;
      }
      if (keyCode == LEFT) {
        a = a-da;
      }
      if (keyCode == RIGHT) {
        a = a+da;
      }
    }
  }
  //moon hit of wall
  fill(#FFFFFF);
  if((a <= 50) || (a >= 550)){
    da = da*-1;   
  }
  if((b <= 50) || (b >=550)) {
  db = db*-1;
  }
  //moon hit notice
  if (a <= 50)  {

//    textFont(myfont);
    mystring3 = "Moon Hit Left";
    text(mystring3,width/2,height/2);
    //delay(5000);
  }
  if (a >= 550) {

//    textFont(myfont);
    mystring3 = "Moon Hit Right";
    text(mystring3,width/2,height/2);
    //delay(5000);
  }
  if (b <=50) {

//    textFont(myfont);
    mystring3 = "Moon Hit Top";
    text(mystring3,width/2,height/3);
    //delay(5000);
  }
  if (b >= 550) {

//    textFont(myfont);
    mystring3 = "Moon Hit Bottom";
    text(mystring3,width/2,height/3);
    //delay(5000);
  }
}