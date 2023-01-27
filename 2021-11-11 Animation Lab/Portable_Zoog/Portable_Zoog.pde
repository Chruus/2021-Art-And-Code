size(500,500);
rectMode(CENTER);

float zgx=125;
float zgy=125;
float zgs=50;
  stroke(0);
  fill(150);
  rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
  fill(255);
  ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
  fill(0);
  ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
  ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
  stroke(0);
  line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
  line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
