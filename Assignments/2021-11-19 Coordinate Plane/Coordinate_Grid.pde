//The Actual Project
size(750,250);
rectMode(CENTER);
for(int i=0;i<width;i+=10){
  line(i,0,i,height);
  line(0,i,width,i);
}
stroke(255,0,0);
strokeWeight(4);
line(0,height/2,width,height/2);
line(width/2,0,width/2,height);


//Obligitory Zoog
int zgx=floor(random(0,2));
int zgy=floor(random(0,2));
int zgs=12;
zgx*=width/2;
zgx+=width/4;
zgy*=height/2;
zgy+=height/4;
  stroke(0);
  strokeWeight(1);
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
