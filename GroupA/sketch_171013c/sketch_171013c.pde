PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage bg;

void setup() { 
  size(900, 812); 
  img1 = loadImage("ball1.jpg");
  img2 = loadImage("ball2.png");
  img3 = loadImage("ball3.png");
  img4 = loadImage("ball4.jpg");
  bg   = loadImage("bg.png");
} 

void draw() {  
  background(bg);
  pushMatrix();
  rotate(radians(20));
  //tint(second() * 4,second() * 4,second() * 4); 
  image(img1, 0, 0, width/2,height/2);
  popMatrix();
  pushMatrix();
 // rotate(second());
// scale(.2);
  image(img2, width/2, 0, width/2,height/2);
  popMatrix();
  image(img3, 0, height/2, width/2,height/2);
  filter(INVERT);
  image(img4, width/2,height/2, width/2,height/2);
}