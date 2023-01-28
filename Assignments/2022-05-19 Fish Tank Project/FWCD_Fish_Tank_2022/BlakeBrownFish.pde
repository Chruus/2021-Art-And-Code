class BlakeBrownFish extends AnimatedObject{
 
 PImage sub;
 PImage sub2;
 int xPos;
 int yPos;
 boolean direction;
 PImage boat;
 int xSpeed;
 int ySpeed;
 float dist = 10;
 float bY;
 float rotation;
  
 BlakeBrownFish(){
   xPos = 100;
   yPos = 50; 
   sub = loadImage("CyclopsExt1.png");
   sub2 = loadImage("CyclopsExt2.png");
   xSpeed = -3;
   boat = sub;
   bY = 0;
 }
 
 
 void display(){
  
  pushStyle();
  noTint();
  image(boat,xPos,yPos,100,100);
  noFill();
  stroke(0,255,0);
  
  for(int i=0; i < 50; i+= 1){
    ellipse(xPos+14,yPos+44, dist*i, dist*i);
    dist += 0.01+0.001*dist;
  }
  if(dist > 80000)
    dist = 0;
  
popStyle();
 
pushMatrix(); //propeller
pushStyle();
fill(#E3E2D5);
if (xSpeed <= 0){
  translate(xPos+90,yPos+47);
}
else if (xSpeed >= 0){
  translate(xPos+10,yPos+47);
}
rotate(radians(rotation));
ellipse(0,0,30,6);
ellipse(0,0,6,30);
ellipse(10,-3,6,3);
ellipse(-10,3,6,3);
ellipse(-3,-12,3,6);
ellipse(3,12,3,6);
popStyle();

rotation = rotation + 100;
popMatrix();

//bubbles 

 pushStyle();
 bY -= 4;
 
 noFill();
 stroke(#76E7EA);
 if(xSpeed <= 0){
 ellipse(xPos+25+random(-15,15),yPos+17+bY+random(-5,5),9,9);
 ellipse(xPos+20+random(-15,15),yPos+17-12+bY+random(-5,5),9,9);
 }
 else if (xSpeed >= 0){
 ellipse(xPos+85+random(-15,15),yPos+17+bY+random(-5,5),9,9);
 ellipse(xPos+80+random(-15,15),yPos+17-12+bY+random(-5,5),9,9);
 }
 //ellipse(xPos+20+random(-15,15),yPos+17-20+bY+random(-5,5),9,9);
 
 println(bY);
 
 if (bY <= -900){
   bY = yPos+17;
 }
 popStyle();
 
 } //end display
 
 
 void move(){
   
   xPos += xSpeed;
   
   if (xSpeed <= 0){
     boat = sub;
   }
   else if (xSpeed >= 0)
     boat = sub2;
     
   
   if(xPos <= 0 || xPos >= width-90){
    xSpeed = xSpeed * -1;
    
    
   } //bubbles
 }
 
 int getX(){
 return xPos;
 }
 
 int getY(){
 return yPos;
 }
 
  
}//end class
