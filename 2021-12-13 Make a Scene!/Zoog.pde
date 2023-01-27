class Zoog{
  float zgx=2000;//8000
  float zgy=random(400,600);//-3100
  float zgs=25;
  Zoog(){

  }
  void display(){
    zgx-=8.5;
    zgy+=5;
    zgs=50;
    pushStyle();
    stroke(0);
    fill(150);
    rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    stroke(0);
    line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
    line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
    line(zgx-zgs*.6, zgy+zgs*1.2,zgx-zgs*.3, zgy+zgs*1.2);
    line(zgx+zgs*.5, zgy+zgs*1.2,zgx+zgs*.2, zgy+zgs*1.2);
    popStyle();
    //if(zgx<0){zgx=3000;zgy=random(-600,-800);}
  }
  void rider(){
    zgx=l3.lux;
    zgy=l3.luy-20;
    zgs=35;
    pushStyle();
    stroke(0);
    fill(150);
    rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    stroke(0);
    line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
    line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
    line(zgx-zgs*.6, zgy+zgs*1.2,zgx-zgs*.3, zgy+zgs*1.2);
    line(zgx+zgs*.5, zgy+zgs*1.2,zgx+zgs*.2, zgy+zgs*1.2);

    popStyle();
  }
  void rider2(){
    zgx=l1.lux;
    zgy=l1.luy-20;
    zgs=35;
    pushStyle();
    stroke(0);
    fill(150);
    rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    stroke(0);
    line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
    line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
    line(zgx-zgs*.6, zgy+zgs*1.2,zgx-zgs*.3, zgy+zgs*1.2);
    line(zgx+zgs*.5, zgy+zgs*1.2,zgx+zgs*.2, zgy+zgs*1.2);

    popStyle();
  }

}
