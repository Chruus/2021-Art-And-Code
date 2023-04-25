//Christopher Petty
void setup() {
  size(800, 800);
  textAlign(CENTER);
  skelly=loadImage("skeleton.png");
  zombie=loadImage("zombie.png");
  creeper=loadImage("creeper.jpg");
  shop1=loadFont("BodoniMT-Bold-48.vlw");
  shop2=loadFont("BodoniMT-Bold-36.vlw");
  hud=loadFont("BerlinSansFBDemi-Bold-48.vlw");
}
boolean game=true;
boolean killed=false;
boolean bar=true;
boolean z=false;
boolean s=true;
boolean c=false;
float r=1;
float increase;
float dmg;
float up1=500;
float up2=500;
float time=0;
int lvl1=1;
int lvl2=1;
int dmginc=2;
int counter=0;
int barv=0;
int hp=5000;
int hp2=1;
int xpos;
int ypos;
int sko=255;
int zoo=0;
int cro=0;
int score=5000;
int score2;
int score3;
int shopr1=240, shopr2=240, shopr3=240;
int shopg1=200, shopg2=200, shopg3=200;
int shopb1=30, shopb2=30, shopb3=30;
PImage skelly;
PImage zombie;
PImage creeper;
PFont shop1;
PFont shop2;
PFont hud;


void draw() {
  //Setup
  background(255);
  rectMode(CENTER);
  fill(shopr1, shopg1, shopb1);
  rect(width/2, height-height/8+10, width/2, height/8);
  fill(0);
  textSize(height/16);
  textFont(shop1);
  text("SHOP", width/2, height-height/11);
  //If in the game menu
  if (game==true) {
    //Attack Bar
    if (bar==true) {
      barv++;
    }
    if (barv>=50) {
      bar=false;
    }
    if (barv<50) {
      bar=true;
    }
    rectMode(CORNER);
    fill(255, 0);
    stroke(0);
    rect(width/2-25, height-(height/4)*3, 50, 15);
    fill(0);
    rect(width/2-25, height-(height/4)*3, barv, 15);
    if (barv<50) {
      dmg=barv*dmginc;
    }
    if (barv>=50) {
      dmg=barv*dmginc*5;
      ellipse(width/2, height-(height/4*3+10), 10, 10);
    }
    //Enemy
    imageMode(CENTER);
    zombie.resize(width*3/8, width*3/8);
    skelly.resize(width*3/8, width*3/8);
    creeper.resize(width*3/8, width*3/8);
    tint(255, zoo);
    image(zombie, width/2, height/2);
    tint(255, sko);
    image(skelly, width/2, height/2);
    tint(255, cro);
    image(creeper, width/2, height/2);

    //Enemy Spawn
    if (hp<=0) {
      killed=true;
      if ((int)r==1) {
        z=c=false;
        s=true;
        increase=50;
        score2=score;
        if (time/240>0) {
          score+=(increase/(time/240))*hp2*2;
        }
        if (time/240<=0) {
          score+=increase*hp2*2;
        }
        sko=255;
        zoo=cro=0;
        hp=5000*hp2;
      }
      if ((int)r==2) {
        s=c=false;
        z=true;
        increase=20;
        score2=score;
        if (time/120>0) {
          score+=(increase/(time/120))*hp2*2;
        }
        if (time/120<=0) {
          score+=increase*hp2*2;
        }
        zoo=255;
        sko=cro=0;
        hp=2500*hp2;
      }
      if ((int)r==3) {
        z=s=false;
        c=true;
        increase=100;
        score2=score;
        if (time/480>0) {
          score+=(increase/(time/480))*hp2*2;
        }
        if (time/480<=0) {
          score+=increase*hp2*2;
        }
        cro=255;
        sko=zoo=0;
        hp=10000*hp2;
      }
      r=random(1, 4);
    }

    //Hud
    fill(0);
    textSize(height/22);
    if (frameCount%1==0) {
      time++;
    }
    textFont(hud);
    text("Time: "+(int)time/60, width-(width/16)*4, height/8+height/40);
    text("Score: "+score, width/2, height/2+height/4);
    text("Weapon Level: "+lvl2, width-(width/16)*4, height/8+height/13);
    text("Enemy Level: "+lvl1, (width/16)*4, height/8+height/13);
    fill(255, 0, 0);
    text("HP: "+hp, (width/16)*4, height/8+height/40);
    //Hp Bar
    rectMode(CENTER);
    if (z==true) {
      rect(width/2, height/16, hp/(hp2*4), height/40);
    }
    if (s==true) {
      rect(width/2, height/16, hp/(hp2*8), height/40);
    }
    if (c==true) {
      rect(width/2, height/16, hp/(hp2*16), height/40);
    }
    if (killed==true) {
      score3=score-score2;
      text("KILLED! +"+score3+" Points!", width/2, height/2+height/4+height/16);
      time=0;
      counter++;
      if (counter==30) {
        counter=0;
        killed=false;
      }
    }
  }

  //Shop Menu
  if (game==false) {
    fill(shopr2, shopg2, shopb2);
    rect(width/2, height/2, width-width/4, height/8);
    fill(shopr3, shopg3, shopb3);
    rect(width/2, height/4, width-width/4, height/8);
    fill(0);
    textFont(shop2);
    text("Upgrade Sword Level: "+up1+" Points", width/2, height/2+height/80);
    text("Upgrade Enemy Level: "+up2+" Points", width/2, height/4+height/80);
  }
}

void mouseClicked() {
  //Enemy Hitbox
  if (mouseX<width/2+((width/16)*3)) {
    if (mouseX>width/2-((width/16)*3)) {
      if (mouseY<height/2+((height/16)*3)) {
        if (mouseY>height/2-((height/16)*3)) {
          barv=0;
          hp-=dmg;
        }
      }
    }
  }
  //Shop Hitboxes
  if (mouseX<width/2+((width/16)*4)) {
    if (mouseX>width/2-((width/16)*4)) {
      if (mouseY<height) {
        if (mouseY>((height/4)*3)) {
          game=!game;
        }
      }
    }
  }
  if (game==false) {
    if (mouseX<width/2+((width/16)*4)) {
      if (mouseX>width/2-((width/16)*4)) {
        if (mouseY<((height/16)*5)) {
          if (mouseY>((height/16)*3)) {
            if (score>=up2) {
              hp=0;
              score-=up2;
              lvl2+=1;
              up2*=20;
              hp2+=5;
            }
          }
        }
      }
    }
    if (mouseX<width/2+((width/16)*6)) {
      if (mouseX>width/2-((width/16)*6)) {
        if (mouseY<((width/16)*9)) {
          if (mouseY>((width/16)*7)) {
            if (score>=up1) {
              score-=up1;
              lvl1++;
              up1*=20;
              dmginc*=5;
            }
          }
        }
      }
    }
  }
}
void mousePressed() {
  //Shop buttons while pressed-down
  if (mouseX<width/2+((width/16)*4)) {
    if (mouseX>width/2-((width/16)*4)) {
      if (mouseY<height) {
        if (mouseY>((height/4)*3)) {
          shopr1=255;
          shopg1=255;
          shopg1=160;
        }
      }
    }
  }
  if (game==false) {
    if (mouseX<width/2+((width/16)*4)) {
      if (mouseX>width/2-((width/16)*4)) {
        if (mouseY<((height/16)*5)) {
          if (mouseY>((height/16)*3)) {
            shopr3=255;
            shopg3=255;
            shopg3=160;
          }
        }
      }
    }
    if (mouseX<width/2+((width/16)*6)) {
      if (mouseX>width/2-((width/16)*6)) {
        if (mouseY<((height/16)*9)) {
          if (mouseY>((height/16)*7)) {
            shopr2=255;
            shopg2=255;
            shopg2=160;
          }
        }
      }
    }
  }
}
void mouseReleased() {
  //Shop buttons after pressed dwon
  shopr1=240;
  shopg1=200;
  shopb1=30;
  shopr3=240;
  shopg3=200;
  shopb3=30;
  shopr2=240;
  shopg2=200;
  shopb2=30;
}
