class Clock{
  float x;
  float y;
  float x2;
  float y2;
  float zgs;
  float fillc;
  boolean adjustable;
  Clock(float size, float _x,float _y, boolean b){
    zgs=size*.796875;
    x2=_x;
    y2=_y;
    adjustable=b;
    if(adjustable)
    x=size;
  }
  void setVariables(float size, float _x,float _y, boolean b){
    adjustable=b;
    if(adjustable){
      x2=_x;
      y2=_y;
      zgs=size*.796875;
      x=size;
    }
  }
  void display(){
    widthCalc();
    colors();
    zoog();
    tickMarks();
    hands();
    println(x2,y2,zgs);
  }
  void zoog(){
    pushStyle();
    strokeWeight(x/100);
    fill(255);
    ellipse(x2,y2, zgs*1.2, zgs*1.2);
    fill(fillc,250,250,125);
    ellipse(x2-zgs*.38, y2, zgs*.32, zgs*.64);
    ellipse(x2+zgs*.38, y2, zgs*.32, zgs*.64);
    popStyle();
  }
  void widthCalc(){
    if(adjustable==false){
      if(width>height){
      x=y=height;
        zgs=height/5*4;
      }else {
      x=y=width;
        zgs=width/5*4;
      }
      x2=width/2;
      y2=height/2;
    }
  }
  void tickMarks(){
    for(int i=0;i<360;i+=6){
      pushMatrix();
      strokeWeight(x/133);
      translate(x2,y2);
      rotate(radians(i));
      line(x/2.1,0,x/2.2,0);
      popMatrix();
    }
    for(int i=0;i<360;i+=30){
      pushMatrix();
      strokeWeight(x/100);
      translate(x2,y2);
      rotate(radians(i));
      line(x/2.1,0,x/2.3,0);
      popMatrix();
    }
  }
  void hands(){
    pushMatrix();
    translate(x2,y2);
    rotate(radians(270));
    
    pushMatrix();
    strokeWeight(x/400);
    rotate(radians(second()*6));
    line(0,0,x/2.25,0);
    popMatrix();
    
    pushMatrix();
    strokeWeight(x/133);
    rotate(radians(minute()*6+second()/10));
    line(0,0,x/2.5,0);
    popMatrix();
    
    pushMatrix();
    strokeWeight(x/100);
    if(hour()>12)
    rotate(radians(((hour()-12)*30)+minute()/2));
    else 
    rotate(radians((hour()*30)+minute()/2));
    line(0,0,x/5,0);
    popMatrix();
    
    popMatrix();
  }
  void colors(){
    fillc++;
    if(fillc>250)fillc=0;
  }
}
