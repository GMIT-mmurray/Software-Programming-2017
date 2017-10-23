void setup() {
  size(400,400);
}

void draw() {
  background(0);
  fill(255,0,0);
  rect(0,0,100,100);
  fill(0,255,0);
  rect(100,100,100,100);
  fill(0,0,255);
  rect(200,200,100,100);
  float R =red(get(mouseX,mouseY));
  float G =green(get(mouseX,mouseY));
  float B =blue(get(mouseX,mouseY));
  println("Red ",R,"Green ",G, "Blue ",B);
}