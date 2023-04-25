class Paddle{
  int x;
  int y;
  float speed;
  boolean moving;
  boolean goingUp;
  Paddle(int _x){
    x=_x;
    y=height/2;
  }
  void display(){
    rect(x,y,10,80);
    movement();
  }
  void movement(){
    if(moving){
      if(goingUp){
        if(speed>-8)speed-=.4;
      }
      else{
        if(speed<8)speed+=.4;
      }
    }
    else speed=0;
    if(y<25)speed=1;
    if(y>height-25)speed=-1;
    y+=speed;
  }
  
}
