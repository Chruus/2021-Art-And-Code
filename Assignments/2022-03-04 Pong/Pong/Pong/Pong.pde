void setup(){
  size(600,500);
  p1 = new Paddle(width-50);
  p2 = new Paddle(50);
  b1 = new Ball();
  s1 = new Score(width/2-width/12,height/10);
  s2 = new Score(width/2+width/12,height/10);
  rectMode(CENTER);
  timerb2=true;
}
Paddle p1;
Paddle p2;
Ball b1;
Score s1;
Score s2;
boolean timerb1;
boolean timerb2;
int timer1;
int timer2;
void draw(){
  println(p2.y, frameCount);
  background(0);
  if(timerb2==false)b1.display();
  p1.display();
  p2.display();
  s1.display();
  s2.display();
  collisons();
  scores();
  gameOver();
  for(int i=10;i<height;i+=20){
    rect(width/2,i,4,10);
  }
}
void keyPressed(){
  if(key=='w')p2.goingUp=p2.moving=true;
  if(key=='s'){p2.goingUp=false;p2.moving=true;}
  
  if(keyCode==UP)p1.goingUp=p1.moving=true;
  if(keyCode==DOWN){p1.goingUp=false;p1.moving=true;}  
}

void keyReleased(){
  if(key=='w')p2.moving=false;
  if(key=='s')p2.moving=false;
  
  if(keyCode==UP)p1.moving=false;
  if(keyCode==DOWN)p1.moving=false;
}
void scores(){
  textSize(18);
  if(b1.outLeft){
    if(s1.score<10){
      s1.increaseScore();
      b1.outLeft=false;
    }
    else {
      s1.resetScore();
      b1.outLeft=false;
    }
  }
  if(b1.outRight){
    if(s2.score<10){
      s2.increaseScore();
      b1.outRight=false;
    }
    else {
      s2.resetScore();
      b1.outRight=false;
    }
  }
  if(s1.score>=10||s2.score>=10)timerb2=true;
}
void collisons(){

  
  if(timerb1==false){
    timer1++;
    if(timer1<30){
      timer1=0;
      timerb1=true;
    }
  }
  if(timerb1){
    if(collisons(b1.x,b1.y,10,10,p1.x,p1.y,10,80)){
      b1.speed2+=p1.speed/4;
      b1.goingLeft=true;
      timerb1=false;
    }
    if(collisons(b1.x,b1.y,10,10,p2.x,p2.y,10,80)){
      b1.speed2+=p2.speed/4;
      b1.goingLeft=false;
      timerb1=false;
    }
  }
}
void gameOver(){
  if(timerb2){
    timer2++;
    zoog(width/2,height/2,4);
    if(timer2==120){
      s1.resetScore();
      s2.resetScore();
      timerb2=false;
      timer2=0;
    }
  }
}
void zoog(int zgx, int zgy, int zgs){
  zgs*=50;
  pushStyle();
  stroke(0);
  fill(255);
  ellipse(zgx, zgy, zgs*1.2, zgs*1.2);
  fill(0);
  ellipse(zgx-zgs*.38, zgy, zgs*.32, zgs*.64);
  ellipse(zgx+zgs*.38, zgy, zgs*.32, zgs*.64);
  fill(255,0,0);
  textSize(64);
  text("Game Over",width/2,height/2);
  popStyle();
  
}
boolean collisons(int r1x, int r1y, int r1w, int r1h, int r2x, int r2y, int r2w, int r2h){
  r1x-=r1w/2;
  r2x-=r2w/2;
  r1y-=r1h/2;
  r2y-=r2h/2;
  if (r1x<r2x+r2w&&r1x+r1w>r2x&&r1y<r2y+r2h&&r1y+r1h>r2y) {
      return true;
  }
  return false;
}
