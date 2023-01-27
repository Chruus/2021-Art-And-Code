class Flower{
  float x;
  float y;
  float zgs;
  Flower(){
    x = mouseX;
    y = mouseY;
    zgs = 20;
  }
  void display1(){
    for(int i=125;i>25;i-=5){
      pushMatrix();
      fill(i,i*2,255);
      translate(x,y);
      rotate(i);
      rect(0,0,i,i);
      popMatrix();
      
    }
    fill(0,255,255);
    ellipse(x, y-zgs*.6+11, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(x-zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
    ellipse(x+zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
  }
  void display2(){
    for(int i=150;i>10;i-=15){
      pushMatrix();
      fill(255-i*1.5,15,255-i*1.2);
      translate(x,y);
      rotate(i);
      rect(0,0,i,i);
      popMatrix();
    }
    fill(125,25,255);
    ellipse(x, y-zgs*.6+11, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(x-zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
    ellipse(x+zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
  }
  void display3(){
      for(float i=125;i>10;i-=6.75){
        pushMatrix();
        fill(i*2,0,i);
        translate(x,y);
        rotate(i);
        rect(0,0,i,i);
        popMatrix();
      }
      fill(255,50,150);
      ellipse(x, y-zgs*.6+11, zgs*1.2, zgs*1.2);
      fill(0);
      ellipse(x-zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
      ellipse(x+zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
  }
  void display4(){
      for(int i=200;i>25;i-=9){
        pushMatrix();
        fill(0,0,i*1.2);
        translate(x,y);
        rotate(i);
        rect(0,0,i,i);
        popMatrix();
      }
    fill(0,125,255);
    ellipse(x, y-zgs*.6+11, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(x-zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
    ellipse(x+zgs*.38, y-zgs*.6+11, zgs*.32, zgs*.64);
  }
}
