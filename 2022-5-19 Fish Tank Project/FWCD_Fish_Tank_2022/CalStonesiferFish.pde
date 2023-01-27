class CalStonesiferFish extends AnimatedObject{
  int x;
  int y;
  int pX;
  int pY;
  int xSpeed;
  int ySpeed;
  PImage MichaelJordanCutoff;
  
  CalStonesiferFish(){
   MichaelJordanCutoff = loadImage("MichaelJordanCutoff.png");
  MichaelJordanCutoff.resize(400, 400);
 x = width-100;
 y = height-200;
 pX = x;
 pY = y;
 xSpeed = -5;
 ySpeed = -5;
  
  }
  
  void display(){
    
    if(frameCount % 30 == 0){
    fill(int(random(0,255)), int(random(0,255)), int(random(0,255)));
    }
    
  noStroke();
  
  
  
   quad(x-50, y+40, x - 20, y+40, pX-20, pY+130, pX - 50, pY + 130 ); //30 90
   arc(pX-35, pY+130, 30, 30, 0, PI);
   quad(x-15, y+25, x + 15, y + 25, pX +15, pY + 115, pX-15, pY+115 ); //+35, -15
   arc(pX, pY+115, 30, 30, 0, PI);
  
   
   pushStyle();
   tint(255, 255, 255);
   imageMode(CENTER);
   image(MichaelJordanCutoff, x, y );
  
   popStyle();
    
  }
  
  void move(){
    
   
    x += xSpeed;
    y += ySpeed;
    
    
    if(frameCount % 10 == 0){
      
       pY = y;
    pX = x;
    }
    
    if(x > width || x < 0)
        xSpeed = -xSpeed;
        
    if(y > height || y < 0){
      ySpeed = -ySpeed;
    }
   }
  
  int getX(){
   return x; 
  }
  
  int getY(){
   return y; 
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
} //end class
