class LiftUp{
  float lux=500;
  float luy=1100;

  LiftUp(){
  
  }
  void display(){
    lux+=2;
    luy-=1;
    fill(125);
    rect(lux,luy-30,4,30);
    quad(lux+30,luy+12,lux+30,luy-12,lux-30,luy-20,lux-30,luy+20);
    quad(lux+30,luy+12,lux-30,luy+20,lux,luy+20,lux+40,luy+12);
    if(lux>=2000){lux=500;luy=1100;}

  }
}
