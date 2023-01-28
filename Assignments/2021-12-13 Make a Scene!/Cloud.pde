class Cloud{
  float x=random(-200, width+200);
  float y=random(50,300);
  float s=random(30,150);;
  float d;
  Cloud(){
    if(x>width/2){d=1;}else{d=1;}
  }
  void display(){
    x+=d;
    if(d==1){
      if(x>width+s*2){x=-225;}
    }else if(x<-s*2)x=2000;
    pushStyle();
    noStroke();
    fill(255,75);
    ellipse(x,y,s*3,s);
    popStyle();
  }
}
