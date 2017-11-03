void displayDateAndTime() {
    //date and time
  String mystring1 = "Time:" + hour()+ ":" + minute() + ":" + second();
  //textAlign(CENTER);
  textSize(20);
  text(mystring1, width/2, height/8);
  String mystring2 = "Date:" + day() + "," + month() + "," + year();
  textSize(20);
  text(mystring2, width/2, height/6);
  textAlign(CENTER);
  textSize(20);
   
}