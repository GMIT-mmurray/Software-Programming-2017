void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  background(173, 216, 230); 
  pushMatrix();
  translate(width/3,height/3);
  scale(.2);
  rotate(radians(-second()));
  fill(192, 192, 192);
  stroke(0);
  triangle(30, 200, 150, 130, 260, 200); 
  triangle(340, 200, 455, 130, 570, 200);
  triangle(245, 250, 300, 220, 355, 250);

  fill(255, 10, 255);
  stroke(0);
  rect(40, 200, 210, 200); 
  rect(350, 200, 210, 200); 
  rect(248, 250, 104, 155);


  fill(0);
  rect(285, 330, 30, 75);

  fill(255, 10, 255);
  rect(40, 250, 144, 40);
  rect(144, 250, 104, 40);
  rect(352, 250, 104, 40);
  rect(456, 250, 104, 40);

  fill(0, 255, 255);
  rect(70, 215, 60, 35);
  rect(160, 215, 60, 35);
  rect(380, 215, 60, 35);
  rect(470, 215, 60, 35);
  rect(70, 310, 60, 50);
  rect(160, 310, 60, 50);
  rect(255, 310, 20, 50);
  rect(325, 310, 20, 50);


  fill(255);
  rect(380, 310, 150, 90);
  line(380, 320, 530, 320);
  line(380, 330, 530, 330);
  line(380, 340, 530, 340);
  line(380, 350, 530, 350);
  line(380, 360, 530, 360);
  line(380, 370, 530, 370);
  line(380, 380, 530, 380);
  line(380, 390, 530, 390);
  popMatrix();
}