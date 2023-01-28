class AndyFish extends AnimatedObject{
  
  int x = (int) random(0-width/2+250, 0+width/2-250);
  int y = (int) random(0-height/2+250, 0+height/2-250);
  int xSpeed, ySpeed = 1;
  int frame = 1;
  int i = 1;
  
  AndyFish(){
  x = (int) random(0-width/2+250, 0+width/2-250);
  y = (int) random(0-height/2+250, 0+height/2-250);
  xSpeed = 1;
  ySpeed = 1;
  frame = 1;
  i = 1;
}
  
  void display(){
    
    /*if(frame == 1){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(loc.x, loc.y, 250, 400);
      pushStyle();
      strokeWeight(10);
      line(loc.x+55, loc.y-145, loc.x+80, loc.y-145);
      popStyle();
      line(loc.x, loc.y-125, loc.x+125, loc.y-125);
      pushStyle();
      strokeWeight(5);
      line(loc.x+125, loc.y-125, loc.x+125, loc.y-50);
      popStyle();
      line(loc.x+120, loc.y-50, loc.x+140, loc.y+25);
      line(loc.x+140, loc.y+25, loc.x+120, loc.y+30);
      pushStyle();
      strokeWeight(15);
      line(loc.x+80, loc.y+75, loc.x+110, loc.y+75);
      popStyle();
      popMatrix();
      popStyle();
    }
    
    if(frame == 2){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(loc.x, loc.y, 250, 400);
      pushStyle();
      strokeWeight(10);
      line(loc.x-25, loc.y-150, loc.x-75, loc.y-150);
      line(loc.x+25, loc.y-150, loc.x+75, loc.y-150);
      popStyle();
      line(loc.x-95, loc.y-130, loc.x+95, loc.y-130);
      pushStyle();
      fill(0);
      square(loc.x-95, loc.y-130, 50);
      square(loc.x+45, loc.y-130, 50);
      arc(loc.x-70, loc.y-80, 50, 20, loc.y-70, radians(180), OPEN);
      arc(loc.x+70, loc.y-80, 50, 20, loc.y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(x, loc.y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
    }
    
    if(frame == 3){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(loc.x, loc.y, 250, 400);
      pushStyle();
      strokeWeight(10);
      line(loc.x-25, loc.y-150, loc.x-75, loc.y-150);
      line(loc.x+25, loc.y-150, loc.x+75, loc.y-150);
      popStyle();
      line(loc.x-95, loc.y-100, loc.x+95, loc.y-100);
      pushStyle();
      fill(0);
      circle(loc.x-60, loc.y-115, 15);
      circle(loc.x+60, loc.y-115, 15);
      popStyle();
      pushStyle();
      fill(0);
      square(loc.x-95, loc.y-100, 50);
      square(loc.x+45, loc.y-100, 50);
      arc(loc.x-70, loc.y-50, 50, 20, loc.y-70, radians(180), OPEN);
      arc(loc.x+70, loc.y-50, 50, 20, loc.y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(loc.x, loc.y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
    }
    
    if(frame == 4){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(loc.x, loc.y, 250, 400);
      pushStyle();
      strokeWeight(10);
      line(loc.x-25, loc.y-145, loc.x-50, loc.y-160);
      arc(loc.x-55, loc.y-160, 20, 10, PI, TWO_PI, OPEN);
      line(loc.x+25, loc.y-150, loc.x+75, loc.y-150);
      popStyle();
      line(loc.x-95, loc.y-100, loc.x+95, loc.y-100);
      pushStyle();
      fill(0);
      circle(loc.x-60, loc.y-115, 15);
      circle(loc.x+60, loc.y-115, 15);
      popStyle();
      pushStyle();
      fill(0);
      square(loc.x-95, loc.y-100, 50);
      square(loc.x+45, loc.y-100, 50);
      arc(loc.x-70, loc.y-50, 50, 20, loc.y-70, radians(180), OPEN);
      arc(loc.x+70, loc.y-50, 50, 20, loc.y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(loc.x, loc.y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
    }*/
    
    if(frame == 1){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(x, y, 250, 400);
      pushStyle();
      fill(0);
      stroke(0);
      pushStyle();
      strokeWeight(10);
      line(x+55, y-145, x+80, y-145);
      popStyle();
      line(x, y-125, x+125, y-125);
      pushStyle();
      strokeWeight(5);
      line(x+125, y-125, x+125, y-50);
      popStyle();
      line(x+120, y-50, x+140, y+25);
      line(x+140, y+25, x+120, y+30);
      pushStyle();
      strokeWeight(15);
      line(x+80, y+75, x+110, y+75);
      popStyle();
      popMatrix();
      popStyle();
      popStyle();
      if(frameCount % 15 == 0){
      frame++;
      }
    }
    
    else if(frame == 2){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(x, y, 250, 400);
      pushStyle();
      stroke(0);
      pushStyle();
      strokeWeight(10);
      line(x-25, y-150, x-75, y-150);
      line(x+25, y-150, x+75, y-150);
      popStyle();
      line(x-95, y-130, x+95, y-130);
      pushStyle();
      fill(0);
      square(x-95, y-130, 50);
      square(x+45, y-130, 50);
      arc(x-70, y-80, 50, 20, y-70, radians(180), OPEN);
      arc(x+70, y-80, 50, 20, y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(x, y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
      popStyle();
      if(frameCount % 15 == 0){
      frame++;
      }
    }
    
    else if(frame == 3){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(x, y, 250, 400);
      pushStyle();
      stroke(0);
      pushStyle();
      strokeWeight(10);
      line(x-25, y-150, x-75, y-150);
      line(x+25, y-150, x+75, y-150);
      popStyle();
      line(x-95, y-100, x+95, y-100);
      pushStyle();
      fill(0);
      circle(x-60, y-115, 15);
      circle(x+60, y-115, 15);
      popStyle();
      pushStyle();
      fill(0);
      square(x-95, y-100, 50);
      square(x+45, y-100, 50);
      arc(x-70, y-50, 50, 20, y-70, radians(180), OPEN);
      arc(x+70, y-50, 50, 20, y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(x, y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
      popStyle();
      if(frameCount % 15 == 0){
      frame++;
      }
    }
    
    else if(frame == 4){
      pushStyle();
      fill(255);
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(45));
      ellipseMode(CENTER);
      ellipse(x, y, 250, 400);
      pushStyle();
      stroke(0);
      pushStyle();
      strokeWeight(10);
      line(x-25, y-145, x-50, y-160);
      arc(x-55, y-160, 20, 10, PI, TWO_PI, OPEN);
      line(x+25, y-150, x+75, y-150);
      popStyle();
      line(x-95, y-100, x+95, y-100);
      pushStyle();
      fill(0);
      circle(x-60, y-115, 15);
      circle(x+60, y-115, 15);
      popStyle();
      pushStyle();
      fill(0);
      square(x-95, y-100, 50);
      square(x+45, y-100, 50);
      arc(x-70, y-50, 50, 20, y-70, radians(180), OPEN);
      arc(x+70, y-50, 50, 20, y-70, radians(180), OPEN);
      popStyle();
      pushStyle();
      strokeWeight(5);
      ellipse(x, y+90, 100, 20);
      popStyle();
      popMatrix();
      popStyle();
      popStyle();
      if(frameCount % 15 == 0){
      frame++;
      }
    }
    
    else{
    frame = 1;
    }
    line(100,100,200,200);
  }
  
  /*void switchFrames(){
    for(int i = 0; i < 240; i += 1){
      if(i < 61){
        frame = 1;
      }
      if(i > 60 && i < 121){
        frame = 2;
      }
      if(i > 120 && i < 181){
        frame = 3;
      }
      if(i > 180 && i < 241){
        frame = 4;
      }
      if(i > 240){
        i = 0;
      }
      println(i);
    }
  }*/
  
  int getX(){
    return (int) x;
  }
  
  int getY(){
    return (int) y;
  }
  
}
