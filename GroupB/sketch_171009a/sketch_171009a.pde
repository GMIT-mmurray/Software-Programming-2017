void setup () {
  size (250, 250);
}

void draw () {
  background(#5A5252);
  pushMatrix ();
  translate(mouseX, mouseY);
  rotate(radians(second()*6));
  println(second());
  scale(.5);
  fill (255, 0, 0);
  ellipse (0, 0, 25, 25); 
  ellipse (0, 25, 25, 25);
  ellipse (0, 50, 25, 25);
  popMatrix ();

  pushMatrix ();
  translate(width/4, height/4);
  rotate(radians(90));
  fill (255, 0, 0);
  ellipse (0, 0, 25, 25); 
  ellipse (0, 25, 25, 25);
  ellipse (0, 50, 25, 25);
  popMatrix ();

  ellipse (0, 0, 25, 25);
}