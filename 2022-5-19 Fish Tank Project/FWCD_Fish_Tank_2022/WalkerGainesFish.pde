class WalkerGainesFish extends AnimatedObject {
  int timer, select,r;
  float leftRotate, rightRotate,x,y;
  PImage ML,eye;
  boolean up, zap, moonLordleft, moonLordUp ;


  int getX() {
    return (int)x;
  }
  int getY() {
    return (int)y;
  }

  WalkerGainesFish() {
    super();
    x=150;
    y=475;
    ML= loadImage("moonLord.png");
    up=true;
    moonLordleft=false;
    moonLordUp=false;
    eye = loadImage("eye.png");
    
  }

  WalkerGainesFish(int X) {
    super();
    x=X;
    y=height/2;
    ML= loadImage("moonLord.png");
    up=true;

  }

  void display() {
    
    //cool circle effect
    pushMatrix();
    pushStyle();
    translate(x,y);
    tint(255,255,255);
    imageMode(CENTER);
    rotate(radians(r++));
       image(eye,0,-275);
    
    
    popMatrix();
    
    pushMatrix();
    translate(x,y);
    rotate(radians(180));
    rotate(radians(r));
     image(eye,0,-275);
     
    
    popStyle();
    popMatrix();
    

    
    //stuff
    pushStyle();
    pushMatrix();
    imageMode(CENTER);
    tint(255, 255, 255);
    //zap();

    translate(x+75, y-25);
    //rightArm
    fill(#A38859);
    noStroke();
    rotate(rightRotate);
    //bicep
    rect(-30, 0, 55, 180,40,40,40,40);
    
    //hand
    ellipse(2,185,55,55);
    strokeWeight(9);
    stroke(#A38859);
    line(-20,190,-34,220);
    line(-10,190,-19,230);
    line(2,190,-2,240);
    line(12,190,17,235);
    line(25,190,31,225);
    fill(#60F5C9);
    ellipse(-2,185,30,30);
    fill(#A38859);



    popMatrix();




    //leftArm
    pushMatrix();
    translate(x-65, y-25);
    rotate(leftRotate);
    rect(-30, 0, 55, 180,40,40,40,40);
    //hand
    ellipse(-2,185,55,55);
    strokeWeight(9);
    stroke(#A38859);
    line(-27,190,-38,220);
    line(-15,190,-24,230);
    line(-2,190,-10,240);
    line(12,190,8,235);
    line(22,190,25,225);
    fill(#60F5C9);
    ellipse(-2,185,30,30);
    fill(#A38859);
    
    
    


    if (up) {
      rightRotate-=.01;
      leftRotate+=.01;
    } else {
      rightRotate+=.01;
      leftRotate-=.01;
    }

    if (rightRotate<=-2.5) {
      rightRotate=-2.49;
      leftRotate=2.49;
      up=false;
      zap=true;
      timer=30;
      select = (int)random(0, objs.size());
      println("bozo");
    }

    if (rightRotate>-.3) {
      up=true;
    }



    //println(rightRotate);


    popMatrix();


    pushMatrix();
    //image
    image(ML, x, y);
    ML.resize(500, 434);

    //end
    popStyle();
    popMatrix();
    if (zap) {
      zap();
      //zap=false;
      timer--;
      if (timer<=0) {
        zap=false;
      }
    }

    /*int x1,y1,x2,y2,x3,y3,x4,y4;
     //right
     x1=(75-30);
     y1=-25+180;
     
     x2=75-30+55;
     y2=-25+180;
     
     //left
     x3=-65-30;
     y3=-25+180;
     
     x4=-25+180;
     y4=-65-30+55;
     
     x1 = int(((75)*cos(rightRotate))-((y1)*sin(rightRotate)))+x;
     y1 = int((y1*cos(rightRotate))+((75-30)*sin(rightRotate)))+y;
     
     x2 = int((x2*cos(radians(rightRotate)))-(y2*sin(radians(rightRotate))))+x;
     y2 = int((y2*cos(radians(rightRotate)))+((75-30+55)*sin(radians(rightRotate))))+y;
     
     x3 = int((x3*cos(radians(leftRotate)))-(y3*sin(radians(leftRotate))))+x;
     y3 = int((y3*cos(radians(leftRotate)))+((-65-30)*sin(radians(leftRotate))))+y;
     
     x4 = int((x4*cos(radians(leftRotate)))-(y4*sin(radians(leftRotate))))+x;
     y4 = int((y4*cos(radians(leftRotate)))+((-25+180)*sin(radians(leftRotate))))+y;
     
     
     println(x1,y1);
     */
     

  }


  void zap() {

    pushStyle();
    stroke(#60F5C9);
    int  x1, y1;


    x1=objs.get(select).getX();
    y1=objs.get(select).getY();

    strokeWeight(15);
    line(x+183, y-165, x1, y1);
    line(x-178, y-165,x1, y1);


    popStyle();
  }


  void move() {
    //fiqure 8
    if (moonLordleft) {
      x-=1.4;
    } else {
      x+=1.4;
    }

    if (moonLordUp) {
      y-=.48;
    } else {
      y+=.48;
    }

    if (x+200>=width) {
      moonLordleft=true;
    }
    if (x-200<=0) {
      moonLordleft=false;
    }
    if (y-215<=0) {
      moonLordUp=false;
    }
    if (y+340>=height) {
      moonLordUp=true;
    }    
    
 
  }
  
  
}
