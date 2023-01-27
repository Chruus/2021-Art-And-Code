class DabinLeeFish extends AnimatedObject{
  
  PImage h;
  PVector loc;
  float x = 0;
  float a = 0.0002;
  float y = 0;
  int Xx;
  int Yy;
  boolean LL;

  DabinLeeFish(){
    Xx = width/2;
    loc = new PVector(Xx,Yy);
    h = loadImage("hatty.png");
    h.resize(300,200); 
  }
  
   void display(){
     pushMatrix();
       translate(Xx,y);
       rotate(degrees(x+a));
       image(h,x,y);
     popMatrix();
  }
  
  void move() {
    println(y);
    if(y > 350){
      fill(#A8B4C1);
      rectMode(CENTER);
      strokeWeight(0);
      stroke(#A8B4C1);
      rect(Xx+120,y+420,60,70);
      ellipse(Xx+120,y+390,60,50);
      fill(0);
      rect(Xx+105, y+405, 23,20);
      stroke(0);
      strokeWeight(3);
      line(Xx+87, y+405, Xx+153, y+390);
      ellipse(Xx+136,y+405,9,9);
    }
    else{
     y= y+0.9;
     pushStyle();
     x=x+a;
          if (x+a>(50*0.0002)){
            a*=-1;
          }
          else if (x+a<(-50*0.0002)){
            a*=-1;
          }
    }
  }
  
  void ghost(){
    y = 300;
  }

  
  
    int getX() {
      return (int)x;
    }
      
    int getY(){
      return (int)y;
    }
    
    
}
  
