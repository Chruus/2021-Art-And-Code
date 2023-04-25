class Ball{
  int x;
  int y;
  float speed;
  float speed2=2;
  boolean goingLeft=true;
  boolean goingUp=false;
  boolean outLeft;
  boolean outRight;
  Ball(){
    x=width/2;
    y=height/2;
  }
  void display(){
    rect(x,y,10,10);
    if(speed2>5)speed2=8;
    x+=speed*2;
    y+=speed2;
    direction();
  }
  void direction(){
    if(goingLeft)
      speed=-2.5;
    else
      speed=2.5;
      
    if(y>height-5&&speed2>0)
      speed2=-speed2;
    if(y<5&&speed2<0)
      speed2=-speed2;

//    if(goingUp&&speed2>0||goingUp==false&&speed2<0)
//      bounceV();
      
    if(x<0){
      respawn(true);
    }
    if(x>width){
      respawn(false);
    }
  }
  void bounceH(){
  }
  void bounceV(){
    goingUp=!goingUp;
    speed2=-speed2;
  }
  void respawn(boolean left){
    if(left){
      x=width/2;
      y=height/2;
      speed2=0;
      outLeft=true;
    }
    else {
      x=width/2;
      y=height/2;
      speed2=0;
      outRight=true;
    }
  }
}
