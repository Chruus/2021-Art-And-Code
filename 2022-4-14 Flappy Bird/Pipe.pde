class Pipe {
  Pipe(float _x) {
    random=false;
    x=(int)_x;
  }
  Pipe(float _x, boolean _random) {
    x=(int)_x;
    y=(int)random(15, 35)*10;
    random=_random;
    pipe = loadImage("pipe.png");
  }
  boolean sm;
  boolean random;
  float x;
  int y;
  PImage pipe;

  void display() {
    pushMatrix();
    fill(0, 255, 0);
    if(sm){
      rect(x, y+218, 80, 320);
      rect(x, y-218, 80, 320);
    }
    scale(.334);
    translate(x*3-124, y*3+174);
    if(sm==false){
      image(pipe, 0, 0);
      translate(0, -2070);
      image(pipe, 0, 0);
    }
    popMatrix();
  }
  void moving() {
    x-=3.67;
    if (x<-50)respawn();
  }
  void respawn() {
    x=width+40;
    if (random)y=(int)random(15, 35)*10;
  }
  void setxy(float _x, float _y) {
    x=(int)_x;
    y=(int)_y;
  }
}
