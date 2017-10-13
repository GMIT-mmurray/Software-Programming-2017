PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage bg;

void setup() {  
  size(1286, 1085); 

  img1 = loadImage("ball1.png");
  img2 = loadImage("ball2.png");
  img3 = loadImage("ball3.png");
  img4 = loadImage("ball4.png");
  bg = loadImage("bg.png");
} 

void draw() {
  background(bg);
  pushMatrix();
  translate(0, 0);
  imageMode(CENTER);
  rotate(radians(90));
  scale(1.6);

   tint(second() * 4, second() * 4, second() * 4); 
  println(second());
  image(img1, 0, 0, 400, 400);
  popMatrix();
  imageMode(CORNER);
  image(img2, 400, 0, 400, 400);
//   filter(THRESHOLD);
  image(img3, 0, 400, 400, 400);
 
  image(img4, 400, 400, 400, 400);
}