void displayTime() {
    fill(255, 0, 0);
  textSize(20);
  textAlign(CENTER);
  //  textFont(font);
  String dispTime = "Time-> " + hour() + ":" + minute() + ":"  + second(); 
  text(dispTime, width-150, (height-550) + 45);
  String dispdate = "Date-> " + day() + ":" + month() + ":"  + year(); 
  text(dispdate, width-150, (height-520) + 45);
}