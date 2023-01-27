class VailDickeyFish extends AnimatedObject{
  
  int x;
  int y;
  PImage pic;
  PImage img;
  PImage img2;
  PImage imgrage;
  PImage imgrage2;
  float xSpeed;
  float ySpeed;
  float v;
  float yV;
  int n;
  int yN;
  int courner;
  int yCourner;
  float opacity;
  boolean fade;
  boolean phase;
  int bN;
  int bX;
  int bY;
  float b1X;
  float b2X;
  float b3X;
  float b4X;
  float b5X;
  float b6X;
  float b1Y;
  float b2Y;
  float b3Y;
  float b4Y;
  float b5Y;
  float b6Y;
  boolean attack;
  
  VailDickeyFish(){
    x = 900;
    y= 500;
    img = loadImage("duke.png");
    img2 = loadImage("duke2.png");
    imgrage = loadImage("dukerage.png");
    imgrage2 = loadImage("dukerage2.png");
    img.resize(156,108);
  img2.resize(156,108);
  imgrage.resize(156,108);
  imgrage2.resize(156,108);
  pic = img;
  n = -1;
 
  yN = -1;
    xSpeed = -.5 * n;
     ySpeed = -.5 * yN;
    v = -.15;
   yV = -.15;
  
   
   
  }
  
  void display(){
    //color palette
  //  fill(#26C685); bodycolor
  //  fill(#27B77C);  detailscolors
  //  fill(#291EAD); wingscolor
   /* pushStyle();
    noStroke();
    fill(#26C685);
    ellipse(x+20,y,120,80);
    ellipse(x-9,y-5,100,60);
    ellipse(x-15,y-7,110,55);
    ellipse(x-18,y-5,110,50);
    pushMatrix();
    translate(x-78,y-25);
    rotate(radians(45));
    ellipse(0,0,60,20);
    popMatrix();
    pushMatrix();
    translate(x-78,y+15);
    rotate(radians(315));
    ellipse(0,0,60,20);
    popMatrix();
    ellipse(x+40,y,80,75);
    ellipse(x+45,y,85,70);
    ellipse(x+48,y-2,87,70);
     ellipse(x+55,y-5,90,60);
     ellipse(x+66,y-8,80,70);
     ellipse(x+50,y-24,60,36);
     fill(0);
     ellipse(x+70,y-22,20,10);
     ellipse(x+94,y-21,20,10);
    
    popStyle()
  */
  if (fade == true){
     image(pic,x-(25*n), y);
  }
  
  pushStyle();
  noTint();
  image(pic,x,y);
  
  popStyle();
  println(xSpeed);
  
 // phase();
 
 if(second()%5==0){
attack = true;
 }
 if (second()%9==0){
   attack =false;
 }
 
 if(attack==true){
    bX = x-(30)+ bN;
     bY = y+50;
  bubbles();
 }
 else{
   b1X = 0;
      b2X = 0;
       b3X = 0;
        b4X = 0;
         b5X = 0;
          b6X = 0;
     b1Y = 0;
      b2Y = 0;
       b3Y = 0;
        b4Y = 0;
         b5Y = 0;
          b6Y = 0; 
 }
 
 if(frameCount > 0 && frameCount < 360){
   awoken();
 }
 
  }
  
  void move(){
    
     x+=xSpeed;
     y+=ySpeed;
     xSpeed += v ;
     ySpeed += yV ;
     courner = x + 156;
     yCourner = y +108;
     
    if(x >= width || x <= 0 || courner >= width || courner <= 0 ){
     n = n * -1;
      xSpeed = xSpeed * n;
      v = v * -1;
     
    }
     if(y >= height-120 || y <= 0 || yCourner >= height-120 || yCourner <= 0 ){
     yN = yN * -1;
      ySpeed = ySpeed * yN;
      yV = yV * -1;
    }
    if(n<0){
      pic = img;
    }
    else{
      pic = img2;
    }
    if(frameCount%37==0){
      v = v * -1;
      yV = yV * -1;
    }
    if(xSpeed<=-2.5 || xSpeed >=2.5){
     fade = true;
    }
    else{
      fade = false;
    }
     if(ySpeed<=-1.5 || ySpeed >=1.5){
     fade = true;
    }
    else{
      fade = false;
    }
     if(n>0){
      bN =220;
    }
    if(pic == img){
      bN = 0;
    }
    else{
      bN = 220;
    }
  
  }
/*  void phase(){
    rect(200,200,200,200);
      if(frameCount >= 120 && n<0){
    pic = imgrage;
    phase = true;
  }
   if(frameCount >= 120 && n>0){
    pic = imgrage2;
    phase =  true;
  }
 
  iphase == true){
    xSpeed = 0;
    ySpeed = 0;
  }
  else{
    xSpeed = -.5 * n;
     ySpeed = -.5 * yN;
  }
  
  }
  */
  void bubbles(){
    
   
   
     b1X = b1X+(3.5*n) ;
      b2X = b2X+(4.5*n) ;
       b3X = b3X+(3.8*n) ;
        b4X = b4X+(4.7*n) ;
         b5X = b5X+(4.2*n) ;
          b6X = b6X+(3.2*n) ;
          
     b1Y = b1Y+(.5*n) ;
      b2Y = b2Y-(.5*n) ;
       b3Y = b3Y+(.8*n) ;
        b4Y = b4Y-(.7*n) ;
         b5Y = b5Y+(.2*n) ;
          b6Y = b6Y-(.4*n) ;
          
     
     
     
    
    pushStyle();
    //b1
    fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX+b1X,bY+b1Y,30,30);
    noFill();
    ellipse(bX+b1X,bY+b1Y,25,25);
     
   
    //b2
     fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX+30+b2X,bY+5+b2Y,30,30);
    noFill();
    ellipse(bX+30+b2X,bY+5+b2Y,25,25);
    
    //b3
     fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX-20+b3X,bY-5+b3Y,30,30);
    noFill();
    ellipse(bX-20+b3X,bY-5+b3Y,25,25);
    
    //b4
     fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX-20+b4X,bY+10+b4Y,30,30);
    noFill();
    ellipse(bX-20+b4X,bY+10+b4Y,25,25);
    
    //b5
     fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX-15+b5X,bY+10+b5Y,30,30);
    noFill();
    ellipse(bX-15+b5X,bY+10+b5Y,25,25);
    
    //b6
     fill(#BFFDFF,50);
    strokeWeight(2);
    stroke(#00F6FC);
    ellipse(bX+10+b6X,bY-15+b6Y,30,30);
    noFill();
    ellipse(bX+10+b6X,bY-15+b6Y,25,25);
    
    popStyle();
    
    if(bX < 0 || bX > width){
      attack = false;
    }
    
  }
  
  void awoken(){
    pushStyle();
    fill(#9200FC);
    textSize(20);
    text("Duke Fishron has awoken!", 10,height-80);
   popStyle();
  }
  
  int getX(){
    return x;
    }
 int getY(){
    return y;
  }
  
}//endclass
