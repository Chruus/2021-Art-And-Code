class TuckerGrubbsFish extends AnimatedObject{
  
  boolean lookingLeft;
  boolean lookingRight;
  float x;
  float y;
  float yVel;
  float wid;
  float high;
  int frame;
  
  float wingRotateL;
  float wingRotateR;
  float wingRLBack;
  
  boolean timer;
  boolean spinnyBoi;
  
  TuckerGrubbsFish(){
    lookingRight = false;
    lookingLeft = true;
    x = width-45;
    y = height/2;
    wid = 90;
    high = 60;
    wingRotateL = 0;
    wingRotateR = -135;
    wingRLBack = 0;
    yVel = 0;
    frame = 0;
  }
  
  void display(){
    pushStyle();
    pushMatrix();
    
      if(lookingLeft){
        pushStyle();
        
          //backwing
           pushMatrix();
            translate(x-10, y);
            rotate(radians(135));
            ellipse(30, 0, 60, 30);
          popMatrix();
          //breifcase
          pushMatrix();
            pushStyle();
              translate(x-50, y+50);
              rotate(-15);
              fill(0);
              rect(-30, -20, 70, 50);
            popStyle();
          popMatrix();
          pushMatrix();
          //body
          fill(#FFF80D);
      
          ellipse(x, y, wid, high);
          //head and beak
          ellipse(x-35, y-25, wid-20, high-15);
          fill(#FAC905);
          ellipse(x-70, y-25, wid/2-10, high/2-20);
          fill(0);
          popMatrix();
          //hat
          pushMatrix();
            rectMode(CENTER);
            stroke(100);
            translate(x-25, y-45);
            rotate(radians(15));
            rect(0, 0, 70, 10);
            rect(0, -30, 50, 50);
            rect(0, -10, 50, 10);
            textAlign(CENTER);
            fill(255);
            textSize(4);
            text("International Spy Museum",0, -10);
          popMatrix();
          //front wing
          pushMatrix();
            translate(x-10, y);
            rotate(radians(wingRotateL));
            ellipse(30, 0, 60, 30);
          popMatrix();
          //glasses?
          fill(0);
          ellipse(x-53, y-36, wid/2-30, high/2-20);
          rectMode(CENTER);
          noStroke();
          rect(x-43, y-36, 10, 3);
        popStyle();
      }
      else if(lookingRight){
        pushStyle();
          //backwing
          pushMatrix();
            translate(x+10, y);
            rotate(radians(wingRLBack));
            ellipse(-30, 0, 60, 30);
          popMatrix();
          
          //Body
          fill(#FFF80D);
      
          ellipse(x, y, wid, high);
          //head and beak
          ellipse(x+35, y-25, wid-20, high-15);
          fill(#FAC905);
          ellipse(x+70, y-25, wid/2-10, high/2-20);
          fill(0);
          //hat
          pushMatrix();
            rectMode(CENTER);
            stroke(100);
            translate(x+25, y-45);
            rotate(radians(-15));
            rect(0, 0, 70, 10);
            rect(0, -30, 50, 50);
            rect(0, -10, 50, 10);
            textAlign(CENTER);
            fill(255);
            textSize(4);
            text("International Spy Museum",0, -10);
          popMatrix();
          //briefcase
          pushMatrix();
          pushStyle();
            translate(x+50, y+50);
            rotate(15);
            fill(0);
            rect(0, 0, 70, 50);
            fill(255);
            textAlign(CENTER);
            pushMatrix();
            rotate(radians(182));
              textSize(12);
              text("Top Secret", 0, 10);
            popMatrix();
            popStyle();
          popMatrix();
          //wing
          pushMatrix();
            translate(x+10, y);
            rotate(radians(wingRotateR));
            ellipse(-30, 0, 60, 30);
          popMatrix();
          //glasses
          fill(0);
          ellipse(x+53, y-36, wid/2-30, high/2-20);
          rectMode(CENTER);
          noStroke();
          rect(x+43, y-36, 10, 3);
        popStyle();
      }
    popMatrix();
    popStyle();
  }
  
  void move(PVector[] locs){
    if(lookingRight){
      if(x+70+(wid/2)-10 >= width){
        lookingRight = false;
        lookingLeft = true;
        yVel = random(-2,2);
      }
      else{
        x+=2;
        y+=yVel;
      }
    }
    else if(lookingLeft){
      if(x-70-(wid/2)-10 <= 0){
        lookingRight = true;
        lookingLeft = false;
        yVel = random(-2,2);
      }
      else{
        x-=2;
        y+=yVel;
      }
    }
    if(y-98 <= 0){
      yVel*=-1;
    }
    if(y+75 >= height-130){
      yVel *= -1;
    }
    for(PVector l: locs){
      if(lookingLeft){
        if(l.x > this.x-250 && l.x < this.x && l.y > this.y - 50 && l.y < this.y+50){
          danger();
        }
        
      }
      else if(lookingRight){
        if(l.x > this.x && l.x < this.x+250 && l.y > this.y - 50 && l.y < this.y+50){
          danger();
        }
      }
    }
    if(timer){
      if(frameCount%120 == 0){
        timer = false; 
        wingRotateL = 0;
        wingRLBack = 0;
      }
    }
  }
  
  void danger(){
    if(lookingLeft){
      pushStyle();
        fill(255, 0, 0);
        rect(0, y, x-70, 10);
        wingRotateL = 180;
        timer = true;
      popStyle();
    }
    else if(lookingRight){
      pushStyle();
        wingRLBack = 190;
        fill(255, 0, 0);
        rect(x+70, y, width, 10);
        timer = true;
      popStyle();
    }
  }
  
  int getX(){
    return (int)x;
  }
  
  int getY(){
    return (int)y;
  }
}
