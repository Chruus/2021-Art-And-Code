void setup(){
  size(800,400);
  rectMode(CENTER);
  textAlign(CENTER);
}
int c1;
int c2;
int o1;
int o2;
void draw(){
  stroke(c1);
  fill(c1);
  rect(195,200,395,400);
  stroke(c2);
  fill(c2);
  rect(605,200,395,400);
  
  fill(0,o1);
  stroke(0,o1);
  textSize(12);
  text("There was no challenge for this one",195,175);
  text("so I'll just put a zoog over here",195,200);
  line(195,210,195,230);
  line(195,230,390,230);
  
  stroke(0,o2);
  fill(150,o2);
  rect(590, 170, 20, 100);
  fill(255,o2);
  ellipse(590, 140, 60, 60);
  fill(0,o2);
  ellipse(571, 140, 16, 32);
  ellipse(609, 140, 16, 32);
  stroke(0,o2);
  line(580, 220, 570, 230);
  line(600, 220, 610, 230);
  line(410,230,525,230);
  triangle(525,210,525,250,550,230);
  
  if(mouseX>405){
    c1=o1=0;
    c2=o2=255;
  } else if(mouseX<395){
    c1=o1=255;
    c2=o2=0;
  } else {
    c1=o1=0;
    c2=o2=0;
  }   
}
