void setup(){
  size(800,800);
}
int r1;
int g1;
int b1;
int r2;
int g2;
void draw(){
  fill(r1,0,0);
  stroke(r1,0,0);
  square(0,0,390);
  fill(0,g1,0);
  stroke(0,g1,0);
  square(410,0,390);
  fill(0,0,b1);
  stroke(0,0,b1);
  square(0,410,390);
  fill(r2,g2,0);
  stroke(r2,g2,0);
  square(410,410,390);
  if(mouseX>410&&mouseY>410){
      r2=g2=255;
      r1=g1=b1=0;
  }else if(mouseX>410&&mouseY<390){
      g1=255;
      r1=r2=g2=b1=0;
  }else if(mouseX<390&&mouseY>410){
      b1=255;
      r1=r2=g1=g2=0;
  }else if(mouseX<390&&mouseY<390){
      r1=255;
      r2=g1=g2=b1=0;
  }else {
    r1=r2=g1=g2=b1=0;
  }
}
