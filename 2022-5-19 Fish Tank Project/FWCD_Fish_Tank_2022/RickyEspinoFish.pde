class RickyEspinoFish extends AnimatedObject{
  
int getX(){
  return x;
}

int getY(){
  return y;
}

int x= width/2;
int y= height/2;
float frame=0;
  
  void display(){
    pushStyle();
    
    
    
    fill(0);
    stroke(0);
    strokeWeight(5);
    line(x-10,y-20,x-20,y-60);
    line(x-20,y-60,x+10,y-30);
    line(x-20,y-20,x,y-70);
    line(x,y-70,x+10,y-20);
    line(x-20,y-30,x+15,y-60);
    line(x+15,y-60,x+10,y-20);
    
    noStroke();
    fill(#FAE335);
    triangle(x-10,y-20,x-20,y-60,x+10,y-30);
    triangle(x-20,y-20,x,y-70,x+10,y-20);
    triangle(x-20,y-30,x+15,y-60,x+10,y-20);
    
    fill(0);
    stroke(0);
    strokeWeight(5);
    line(x-20,y+30,x-20,y+50);
    line(x-20,y+50,x,y+30);
    line(x+15,y+30,x-5,y+60);
    line(x-5,y+60,x+5,y+30);
    line(x-10,y+30,x+10,y+60);
    line(x+10,y+60,x+15,y+30);
    line(x-5,y+30,x+25,y+55);
    line(x+25,y+55,x+15,y+30);
    
    fill(#FAE335);
    noStroke();
    triangle(x-20,y+30,x-20,y+50,x,y+30);
    triangle(x-15,y+30,x-5,y+60,x+5,y+30);
    triangle(x-10,y+30,x+10,y+60,x+15,y+30);
    triangle(x-5,y+30,x+25,y+55,x+15,y+30);
    
    fill(#d26150);
    strokeWeight(2);
    stroke(0);
    arc(x,y,100,80,radians(-150),radians(150));
    noStroke();
    triangle(x,y,x-33,y-20,x-33,y+20);
    stroke(#e196a4);
    fill(0);
    noStroke();
    ellipse(x-39,y,15,37);
    noFill();
    stroke(#e196a4);
    strokeWeight(3);
    arc(x-45,y,30,40,radians(-80),radians(80));
    
    
    stroke(0);
    strokeWeight(1);
    arc(x-10,y-30,20,20,radians(-60),radians(90));
    arc(x-5,y-10,20,20,radians(-120),radians(90));
    arc(x-5,y+10,20,20,radians(-120),radians(100));
    arc(x-10,y+30,20,20,radians(-120),radians(60));
    fill(#d26150);
    arc(x-20,y,30,80,radians(-80),radians(80));
    arc(x+20,y,30,70,radians(-80),radians(80));
    
    fill(255);
    noStroke();
    ellipse(x-22,y-20,20,20);
    fill(0);
    ellipse(x-22,y-20,2,2);
    
    fill(255);
    strokeWeight(3);
    stroke(#d26150);
    arc(x+72,y,40,75,radians(-280),radians(-80));
    stroke(0);
    strokeWeight(1);
    noFill();
    arc(x+68,y-10,30,20,radians(-140),radians(-70));
    arc(x+68,y+10,30,20,radians(70),radians(140));
    
    strokeWeight(3);
    stroke(#FAE335);
    bezier(x-25,y+10,x+21,y+8,x-21,y+60,x+35,y+73);
    
    
    
    
    
    
    if(frame>2)
      frame=0;
    
    if(frame<=1){
      noStroke();
    fill(255);
    triangle(x+18,y+20,x-8,y+3,x+5,y-8);
    triangle(x+5,y-8,x+23,y-8,x+10,y+8);
    triangle(x+10,y+8,x+15,y,x+15,y+12);
    
    noFill();
    stroke(#d26150);
    strokeWeight(4);
    line(x-10,y,x+5,y-10);
    line(x+5,y-10,x+25,y-10);
    stroke(0);
    strokeWeight(1);
    line(x-12,y-2,x+5,y-12);
    line(x+5,y-12,x+25,y-12);
    line(x-10,y+2,x+5,y-8);
    line(x+5,y-8,x+25,y-8);
    arc(x+25,y-10,4,4,radians(-90),radians(90));
    arc(x+25,y+8,20,30,radians(130),radians(250));
    line(x+18,y+20,x-8,y+3);
    arc(x+5,y+8,30,20,radians(-150),radians(-60));
    arc(x+5,y+8,25,10,radians(-130),radians(-60));
    
    
    } else if(frame>1 && frame<=2){
      noStroke();
    fill(255);
    triangle(x+5,y+20,x-8,y+3,x,y-8);
    triangle(x,y-8,x+8,y-8,x+3,y+14);
    
    noFill();
    stroke(#d26150);
    strokeWeight(4);
    line(x-10,y,x-5,y-10);
    line(x-5,y-10,x+10,y-10);
    stroke(0);
    strokeWeight(1);
    line(x-12,y-2,x-5,y-12);
    line(x-5,y-12,x+10,y-12);
    line(x-10,y+2,x-2,y-8);
    line(x-2,y-8,x+10,y-8);
    arc(x+10,y-10,4,4,radians(-90),radians(90));
    arc(x+10,y+8,10,30,radians(130),radians(250));
    line(x+5,y+20,x-8,y+3);
    
    arc(x,y+5,20,10,radians(-150),radians(-80));
    arc(x,y+10,15,10,radians(-130),radians(-60));
    
    }
    
    frame+=0.10;
    
    popStyle();
    
    
    
    println(mouseX,mouseY);
    
    x-=2;
    if(x<-100)
      x=width+100;
  }
  
  
  
  
  
} // end class
