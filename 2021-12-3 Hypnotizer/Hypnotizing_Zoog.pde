void setup(){
  size(500,500);
  rectMode(CENTER);
}
float zgx=125;
float zgy=125;
float zgs=200;

void draw(){
  background(255);
  zgx=mouseX;
  zgy=mouseY;
  
  stroke(0);
  fill(150);
  rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
  fill(255);
  ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
  
  for(float i=0;i<80;i+=10){
    strokeWeight(0);
    fill((int)random(256),(int)random(256),(int)random(256));
    ellipse(zgx-zgs*.38, zgy-zgs*.6, (zgs*.32)-i, (zgs*.64)-i);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, (zgs*.32)-i, (zgs*.64)-i);
  }
  strokeWeight(1);
  stroke(0);
  line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
  line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
}
