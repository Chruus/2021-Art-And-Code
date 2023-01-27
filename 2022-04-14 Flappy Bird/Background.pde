class Background {
  Background() {
    x1=width-118;
    x2=0;
    background = loadImage("background.png");
    foreground = loadImage("foreground.png");
  }
  boolean sm;
  boolean dead;
  float x1, x2;
  PImage background, foreground;
  int o=255;
  boolean flash=true;
  void displaybg() {
    pushMatrix();
    scale(1);
    translate(x2, 0);
    if(sm)
      background(255);
    else 
      image(background, 0, 0);
    popMatrix();
    if (dead==false)x2-=.334;
    if (x2<-width)x2=-150;
  }
  void displayfg() {
    pushMatrix();
    if(sm)
      rect(width/2,height-35,450,125);
    else{
      scale(.4);
      translate(x1-600, height*2.1);     
      image(foreground, 0, 0);
    }
    popMatrix();
    if(dead==false)x1-=9.125;
    if (x1<width-118)x1=(int)(width*1.2);
  }
  void flash(){
    if(flash){
      pushStyle();
      pushMatrix();
      fill(255,o);
      o-=15;
      if(o<=0){
        opacityReset();
      }
      rect(width/2,height/2,5000,5000);
      popMatrix();
      popStyle();
    }
  }
  void opacityReset(){
    flash=false;
    o=255;
  }
}
