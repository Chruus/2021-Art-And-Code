class RichardFish extends AnimatedObject{
  
  PImage meatboy;
  int startX;
  int startY;
  boolean goFoward;
  boolean goBackward;
  int resizeRatio;
 
 RichardFish(int Sx, int Sy, int reRatio){//0, random(0,height),85
   startX=Sx;
   startY=Sy;
   resizeRatio=reRatio;
 }
 
 void display(){
 pushStyle();
   noTint();
   meatboy = loadImage("meatboy.png");
   meatboy.resize(85,85);
   image(meatboy, startX, startY);
   fill(#F70505);
   rect(startX+20, startY+70, 10,40);
   rect(startX+60, startY+70, 10,40);
     rect(startX-40, startY+30, 40,10);
   rect(startX+80, startY+30, 40,10);
   
   println(startX, startY, "        ", resizeRatio);
   
  if(resizeRatio>=300){
   resizeRatio=85; 
  }
   
   if(goFoward){
     if(startX<(width/10)){
       rect((width/8),startY+40,40,40);
     }
     
     if(startX<((width/10)*2)){
       rect(((width/10)*2),startY+40,40,40);
     }
     
     if(startX<((width/10)*3)){
       rect(((width/10)*3),startY+40,40,40);
     }
     
     if(startX<((width/10)*4)){
       rect((((width/10)*4)),startY+40,40,40);
     }
     
     if(startX<((width/10)*5)){
       rect((((width/10)*5)),startY+40,40,40);
     }
     
     if(startX<((width/10)*6)){
       rect(((width/10)*6),startY+40,40,40);
     }
     
     if(startX<((width/10)*7)){
       rect(((width/10)*7),startY+40,40,40);
     }
     
     if(startX<((width/10)*8)){
       rect(((width/10)*8),startY+40,40,40);
     }
     
     if(startX<((width/10)*9)){
       rect(((width/10)*9),startY+40,40,40);
     }
   }
   
   if(goBackward){
     if(startX>(width/10)){
       rect((width/8),startY+40,40,40);
     }
     
     if(startX>((width/10)*2)){
       rect(((width/10)*2),startY+40,40,40);
     }
     
     if(startX>((width/10)*3)){
       rect(((width/10)*3),startY+40,40,40);
     }
     
     if(startX>((width/10)*4)){
       rect((((width/10)*4)),startY+40,40,40);
     }
     
     if(startX>((width/10)*5)){
       rect((((width/10)*5)),startY+40,40,40);
     }
     
     if(startX>((width/10)*6)){
       rect(((width/10)*6),startY+40,40,40);
     }
     
     if(startX>((width/10)*7)){
       rect(((width/10)*7),startY+40,40,40);
     }
     
     if(startX>((width/10)*8)){
       rect(((width/10)*8),startY+40,40,40);
     }
     
     if(startX>((width/10)*9)){
       rect(((width/10)*9),startY+40,40,40);
     }
    
   }
   popStyle();
  }
  
  void move(){
  if(goFoward){
    startX+=20;
  }
  
   if(goBackward){
    startX-=20;
  }
    
    if(startX<=0){
    goBackward=false;
    startY=int(random(0,height-90));
      goFoward=true;
  }
  
  if(startX>=width){
    goFoward=false;
     startY=int(random(0,height-90));
    goBackward=true;
  }
    
  }
  
  int getX(){
    return startX;
  }
  
  int getY(){
    return startY;
  }
  
}//end class
