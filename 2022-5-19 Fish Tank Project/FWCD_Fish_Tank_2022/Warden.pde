class warden extends AnimatedObject {
  int x;
  int y;
  int w;
  int h;
  float r;
  warden(){
  
  x = 100;
  y = 145;
  w = 70;
  h = 70;
  }
  void display(){
   
  //draw WARDEn
 
  pushStyle();
  //quad(282,278, x+45,y+22, x+48,y+69, x+2, y+47);
  
  pushMatrix();
  translate(x-15/*x-60*/,y+h+5);
  rotate(radians(r-=5));
  //draw left
  drawBox(-45,0,45,140,-20);
  popMatrix();
  //left ear
  pushStyle();
  noFill();
  stroke(#2B92AA);
  strokeWeight(5);
  bezier(x+10,(y+(h/2)),x+10-41,(y+(h/2))+9,x+10-64, (y+(h/2))-28, x-10-32, (y+(h/2))-35);
  popStyle();
  //left leg
  drawBox(x+(w/2)-30-15, y+h+h+40, 30, 60, -15);
  //right leg
  drawBox(x+(w/2), y+h+h+40, 30, 60, -15);
  //draw body
  drawBox(x-15,y+h,w+30,h+40,-20);
    //draw head
  drawBox(x,y, w,h,-20);
  //draw mouth
  pushStyle();
  noFill();
  strokeWeight(15);
  bezier(x-7,y+75,x+4-7,y+75-25,x+36-7,y+75-21,x+41-7,y+75+2);
  popStyle();
  //draw ears
  pushStyle();
  noFill();
  stroke(#2B92AA);
  strokeWeight(5);
  bezier((x+w)-10,(y+(h/2)),(x+w)-10+41,(y+(h/2))+9,(x+w)-10+64, (y+(h/2))-28, (x+w)-10+32, (y+(h/2))-35);
  popStyle();
  //draw right
  pushMatrix();
  translate(x+15+w,y+h+5);
  rotate(radians(r-=5));
  drawBox(0,0, 45, 140,-20);
  popMatrix();
    
  }
  
  void drawBox(int x,int y,int w,int h, int d){
  rect(x,y,w,h);
  line(x,y,x+d,y-d);
  line(x+w,y,x+w+d,y-d);
  line(x+w,y+h,x+w+d,y+h-d);
  line(x,y+h,x+d,y+h-d);
  rect(x+d,y-d,w,h);
}

    int getX(){
      return x;
    }
    
    int getY(){
      return y;
    }
  void move(){
    x+=3;
    if (x> width){
      x = 0;
      r -=5;
    }
    
    
  }



}
