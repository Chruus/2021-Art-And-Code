class Quandale{ // extends AnimatedObject{
PImage pic;
int xX = 150;
int yY = 100;
float xSpeed = 5;
float ySpeed = 4;
int x = xX;
int y = yY;

  
  Quandale(float sX, float sY, float sXVel, float sYVel, String Quandale){
     pic = loadImage(Quandale); 
  }
  
  void display(){
    pushStyle();
    fill(#d74894);
ellipse(xX+100, yY+85, 150, 50);
ellipse(xX-100, yY+85, 150, 50);
ellipseMode(CENTER);
fill(#FFB6C1);
ellipse(xX+100, yY, 75, 70);
ellipse(xX-100, yY, 75, 70);
ellipse(xX, yY, 200, 200);
fill(#030000);
ellipse(xX-50, yY-20, 75, 50);
ellipse(xX+50, yY-20, 75, 50);
//triangle(xX-130, yY+130, xX-150, yY, xX+170, yY-130);
fill(#FFFFFF);
ellipse(xX-50, yY-20, 25, 25);
//ellipse(285, 225, 25, 25);
fill(#FFFFFF);
arc(xX, yY+40, 120, 80, radians(-10), radians(190));
fill(0);
line(xX, yY+35, xX, yY+80);
line(xX+20, yY+35, xX+30, yY+75);
line(xX+40, yY+35, xX+50, yY+65);
line(xX-20, yY+37, xX-30, yY+75);
line(xX-40, yY+35, xX-50, yY+65);
popStyle();
  }
  
  void collision() {

  xX += xSpeed;
  yY += ySpeed;
  
  if(xX < 0 || xX > width-10) {
    xSpeed *= -1;
  }

  if(yY < 0  || yY > height-10) {
    ySpeed *= -1;
  }
}
  
  int getX;
  int getY;
  
  void fire(){
    fill(#0017FF);
  circle(xX+50,yY-25,random(40));
    for (; x<480; x++)
    for (; y<480; y++) {
      if (dist(xX, yY, 240, 480)<4) set(x, y, xX); 
      set((int)random(-20, 10.5)+x, (int)random(20)-2+y, get(x, y));
    }
  }
    
  
  
  
  
} // end class
