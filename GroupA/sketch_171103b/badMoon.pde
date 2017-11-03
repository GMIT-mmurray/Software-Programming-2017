void drawBadMoon() {
  fill(#FF0000);
  ellipse(a, b, ballsize, ballsize);
  triangle(a-25, b-45, a-20, b-60, a-15, b-45);
  triangle(a+15, b-45, a+20, b-60, a+25, b-45);
  fill(#000000);
  ellipse(a-20, b-20, 25, 25);
  ellipse(a+20, b-20, 25, 25);
  arc(a, b+10, 60, 50, TWO_PI, PI + TWO_PI, CHORD);
  fill(#FF0000);
  ellipse(a-20, b-20, 10, 10);
  ellipse(a+20, b-20, 10, 10);
}