size(400,400);
background(#9B3030);
arc(100,100,40,80,0,PI);
arc(200,100,40,80,PI,2*PI);
noFill();
arc(300,100,40,80,PI,2*PI,CHORD);
strokeWeight(20);
arc(100,200,40,80,PI,2*PI);
fill(#30489B);
noStroke();
arc(200,200,40,80,PI,2*PI);
//arc(300,200,40,80,3*PI/2,PI+TWO_PI);
arc(300,200,40,80,0-0.5*PI,PI);
arc(100,300,40,80,radians(40),radians(278));
arc(200,300,40,80,radians(80),radians(350));