PImage img1;
PImage img2;
PImage img3;
PImage img4;

void setup() {  
  size(800, 800); 

  img1 = loadImage("ball1.png");
  img2 = loadImage("ball2.png");
  img3 = loadImage("ball3.png");
  img4 = loadImage("ball4.png");
} 

void draw() {
  pushMatrix();
  translate(0, 0);
  imageMode(CENTER);
  rotate(radians(90));
  image(img1, 0, 0, 400, 400);
  popMatrix();
  imageMode(CORNER);
  image(img2, 400, 0, 400, 400);
  image(img3, 0, 400, 400, 400);
  image(img4, 400, 400, 400, 400);
}