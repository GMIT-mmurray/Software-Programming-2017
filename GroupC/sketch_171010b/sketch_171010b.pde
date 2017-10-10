PImage img1;
PImage img2;
PImage img3;
PImage img4;

void setup() {
  size(800, 800);
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
}

void draw() {
  background(255);
  pushMatrix();
  image(img1,0,0,400,400);
  popMatrix();
  pushMatrix(); 
  translate(400,0)
  image(img2,0,0,400,400);
  popMatrix();
  pushMatrix();
  translate(0,400);
  image(img3,0,0,400,400);
  popMatrix();
  pushMatrix();
  translate(400,400);
  image(img4,0,0,400,400);
  popMatrix();
}