void drawPunkin() {
  fill(#F56614);
  rect(x, y, 400, 250, 110);
  line(x+285, y, x+285, y+250);
  line(x+235, y, x+235, y+250);
  line(x+185, y, x+185, y+250);
  line(x+135, y, x+135, y+250);
  line(x+85, y, x+85, y+250);
  line(x+35, y, x+35, y+250);
  line(x+335, y, x+335, y+250);
  line(x+385, y, x+385, y+250);
  fill(#045500);
  quad(x+185, y-30, x+195, y-30, x+205, y, x+175, y);
  fill(#D36B02);
  triangle(x+100, y+50, x+140, y+50, x+120, y+100);
  triangle(x+250, y+50, x+290, y+50, x+270, y+100);
  arc(x+200, y+150, 200, 100, TWO_PI, PI + TWO_PI, CHORD);
  fill(#F56614);
  rect(x+210, y+150, 15, 15);
  rect(x+180, y+150, 15, 15);
  rect(x+240, y+150, 15, 15);
  rect(x+150, y+150, 15, 15);
  rect(x+165, y+183, 15, 15, 0, 0, 0, 5);
  rect(x+195, y+184, 15, 15);
  rect(x+225, y+183, 15, 15, 0, 0, 5, 0);
}