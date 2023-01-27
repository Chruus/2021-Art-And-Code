void setup(){
size(1200,800);
frameRate(1000000);
}

int mt=255;
int sizeX=1;
int sizeY=1;
boolean mp=false;

void draw(){
  fill(0);
  strokeWeight(1);
  if(mp==true){
    ellipse(mouseX,mouseY,sizeX,sizeY);
  }
/*  fill(0,0);
  stroke(0,mt);
  strokeWeight(2);
  ellipse(mouseX,mouseY,sizeX+2,sizeY+2);*/
}

void mousePressed(){
  mp=true;
  mt=0;
}

void mouseReleased(){
  mp=false;
  mt=255;
}

void keyPressed(){
  if(key=='=')
    sizeX=sizeX+1;
    sizeY=sizeY+1;
  if(key=='+')
    sizeX=sizeX+1;
    sizeY=sizeY+1;
  if(key=='-')
    sizeX=sizeX-1;
    sizeY=sizeY-1;  
}
