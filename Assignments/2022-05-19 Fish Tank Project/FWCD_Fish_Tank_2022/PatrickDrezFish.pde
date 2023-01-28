import processing.sound.*;
class PatrickDrezFish extends AnimatedObject {

  SoundFile m;
  Boolean playSound;
  PImage fish;
  int x;
  int y;
  float xV;
  float yV;
  boolean eatTime;
  boolean eatTimeTheSequal;
  int rotation;
  int rotationSpeed;
  int rotation2;
  int rotationSpeed2;


  PatrickDrezFish(PApplet l) {
    //m = new SoundFile(l, "monke.wav");
    println(l);
    x = 1400;
    y = 375;
    xV = 3;
    yV = 3;
    fish = loadImage("HungyMonke.png");
    rotation = 145;
    rotation2 = 70;
  }

  void display() {
    pushStyle();
    imageMode(CENTER);
    noTint();
    moveMonke();
    image(fish, x, y, 100, 150);
    fill(#FFCB39);
    arc(x+5, y-80, 100, 100, radians(180), radians(360));
    rectMode(CENTER);
    rect(x+5, y-70, 150, 10);
    fill(255, 0, 0);
    rect(x+5, y-75, 100, 10);
    popStyle();
  }

  void moveMonke() {
    hungry();
    eatTime();
    if ( x >= 1400) {
      eatTime = true;
      //m.play();
    }
    if (x <= 50) {
      eatTime = false;
    }
  }

  void eatTime() {
    if ( eatTime == true) {
      for ( int i=50; i<x; i+= 50) {
        pushStyle();
        fill(#CE1717);
        arc(i, 390, 20, 20, radians(180), radians(360));
        arc(i+5, 390, 20, 20, radians(180), radians(360));
        fill(#1FA705);
        arc(i-5, 388, 10, 10, radians(180), radians(320));
        fill(#714502);
        arc(i, 385, 10, 10, radians(180), radians(320));
        popStyle();
      }
      pushMatrix();
      pushStyle();
      rectMode(CENTER);
      x-=xV;
      fill(#B78D55);
      if (rotation == 145) {
        rotationSpeed+=5;
      } else if (rotation == 225) {
        rotationSpeed-=5;
      }
      rotation+=rotationSpeed;
      translate(x-50, y+50);
      rotate(radians(rotation));
      rect(0, 0, 75, 20);
      popMatrix();
      pushMatrix();
      translate(x-50, y+80);

      rotate(radians(rotation));
      rect(0, 0, 75, 20);
      popMatrix();
      //ellipse(x-70, y+40, 30, 30);
      //ellipse(x-70, y+80, 30, 30);
      popStyle();
    }
    if ( eatTime == false) {
      for ( int i=1400; i>x; i-= 50) {
        pushStyle();
        fill(#CE1717);
        arc(i, 390, 20, 20, radians(180), radians(360));
        arc(i+5, 390, 20, 20, radians(180), radians(360));
        fill(#1FA705);
        arc(i-5, 388, 10, 10, radians(180), radians(320));
        fill(#714502);
        arc(i-5, 385, 10, 10, radians(180), radians(320));
        popStyle();
      }
      pushStyle();
      rectMode(CORNER);
      x+=xV;
      fill(#B78D55);
      if (rotation2 == 70) {
        rotationSpeed2-=5;
      } else if (rotation2 == 360) {
        rotationSpeed2+=5;
      }
      rotation2 +=rotationSpeed2;
      pushMatrix();
      translate(x+5, y+45);
      rotate(radians(rotation2));
      rect(0, 0, 75, 20);
      popMatrix();
      pushMatrix();
      translate(x+5, y+72);
      rotate(radians(rotation2));
      rect(0, 0, 75, 20);
      popMatrix();
      //ellipse(x+70, y+50, 30, 30);
      //ellipse(x+70, y+80, 30, 30);
      popStyle();
    }
  }
  void hungry() {
    if (eatTime == true)
      fish = loadImage("HungyMonke.png");
    if (eatTime == false)
      fish = loadImage("HungyMonke2.png");
  }
  void reset() {
  }

  int getX() {
    return x;
  }
  int getY() {
    return y;
  }
}
