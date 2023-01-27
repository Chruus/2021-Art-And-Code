void setup() {
  frameRate(60);
  size(450, 600,P2D);
  rectMode(CENTER);
  textAlign(CENTER);
  bg = new Background();
  b = new Bird();
  p1 = new Pipe(width+590, true);
  p2 = new Pipe(width+860, true);
  s = new Score();
  bigFont = createFont("flappytext.ttf", 96);
  medFont = createFont("flappytext.ttf", 64);
  smlFont = createFont("flappytext.ttf", 32);
}
boolean sm;
boolean dead;
boolean space;
boolean wait;
boolean zm;
int timer1;
PFont bigFont, medFont, smlFont;
Bird b;
Pipe p1;
Pipe p2;
Background bg;
Score s;
void draw() {
  println(frameRate);
  b.sm=p1.sm=p2.sm=bg.sm=sm;
  bg.dead=wait;
  s.dead=dead;
  
  bg.displaybg();
  p1.display();
  p2.display();
  bg.displayfg();
  b.display();
  s.display();
  deadCheck();
  collisions();
  ZMscore();
}

boolean collisions(int r1x, int r1y, int r1w, int r1h, float r2x, int r2y, int r2w, int r2h) {
  r1x-=r1w/2;
  r2x-=r2w/2;
  r1y-=r1h/2;
  r2y-=r2h/2;
  if (r1x<r2x+r2w&&r1x+r1w>r2x&&r1y<r2y+r2h&&r1y+r1h>r2y) {
    return true;
  }
  return false;
}

void collisions() {
  if (collisions(70, b.y, 40, 30, p1.x, p1.y+218, 60, 320)||collisions(70, b.y, 40, 30, p1.x, p1.y-218, 60, 320)
    ||collisions(70, b.y, 40, 30, p2.x, p2.y+218, 60, 320)||collisions(70, b.y, 40, 30, p2.x, p2.y-218, 60, 320)||b.y>height-120) {
    dead=true;
  }
}

void deadCheck() {
  if (dead) {
    wait=true;
    timer1++;
    s.displayEnd();
    b.gravity();
    bg.flash();
    if (timer1>30) {
      if (space) {
        respawn();
        dead=space=false;
        timer1=0;
        s.resetScore();
      }
    }
  } 
  else if (wait) {
    timer1++;
    if ((timer1/30)%2==0) {
      textFont(smlFont);
      text("Press Space to Start", width/2, height/2);
    }
    if (timer1>30&&space) {
      wait=false;
      timer1=0;
    }
  } else {
    bg.flash=true;

    b.gravity();
    p1.moving();
    p2.moving();
    space=false;
  }
}

void keyPressed() {
  if (key==' ') {
    if(dead)space=true;
    else if(wait)space=b.jump=true;
    else b.jump=true;
  } 
  if (key=='z') {
    zm=!zm;
  }
  if (key=='s') {
    sm=!sm;
  }
}
void keyReleased(){
  if(key==' '){
    space=false;
  }
}

void respawn() {
  p1.setxy(width+590, (int)random(200, height-200));
  p2.setxy(width+860, (int)random(200, height-200));
  b.respawn();
}

void ZMscore() {
  if (zm)zoogMode();

  b.zoog=zm;

  if ((int)p1.x<72&&(int)p1.x>67||(int)p2.x<72&&(int)p2.x>67) {
    if(dead==false)s.increase();
  }
}

void zoogMode() {
  if (p1.x<p2.x&&p1.x>23||p2.x<23) {
    if (p1.y<p2.y) {
      if (b.y>p1.y+33) {
        b.jump=true;
      }
    } else {
      if (b.y>p1.y+36) {
        b.jump=true;
      }
    }
  } else if (p2.x<p1.x&&p2.x>23||p1.x<23) {
    if (p2.y<p1.y) {
      if (b.y>p2.y+33) {
        b.jump=true;
      }
    } else {
      if (b.y>p2.y+36) {
        b.jump=true;
      }
    }
  }
}
