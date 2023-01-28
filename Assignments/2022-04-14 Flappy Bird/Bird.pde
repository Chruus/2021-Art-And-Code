class Bird {
  Bird() {
    y=height/2;
    zgx=0;
    zgy=0;
    zgs=25;
    bird = loadImage("bird.png");
  }
  boolean sm;
  boolean jump;
  boolean zoog;
  float gravity;
  int y;
  int r;
  int zgx, zgy, zgs;
  PImage bird;
  void display() {
    pushMatrix();
    fill(255, 255, 0);
    if(sm){
      rect(70,y,40,30);
    }
    if (zoog) {
      translate(70, y+14);
      zoog();
    } else {
      scale(.25);
      translate(260, y*4+25);
      if (gravity<1)r=-30;
      if (gravity>=1&&r<90)r+=5;
      rotate(radians(r));
      if(sm==false)
        image(bird, -120, -120);
    }
    popMatrix();
  }
  void gravity() {
    if (gravity<7.2)gravity+=.4;
    else gravity=7.2;
    if (jump&&y>-25) {
      gravity=-7.2;
      jump=false;
    }
    if(y<482)y+=gravity;
  }
  void zoog() {
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
  }
  void respawn(){
    y=height/2;
    gravity=0;
  }
}
