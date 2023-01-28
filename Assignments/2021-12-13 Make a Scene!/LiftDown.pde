class LiftDown{
  float ldx=2000;
  float ldy=250;
  LiftDown(){
    
  }
  void display(){
    ldx-=2;
    ldy+=1;
    fill(125);
    rect(ldx,ldy-30,4,30);
    quad(ldx+30,ldy+20,ldx+30,ldy-20,ldx-30,ldy-12,ldx-30,ldy+12);
    quad(ldx+30,ldy+20,ldx-30,ldy+12,ldx-40,ldy+12,ldx,ldy+20);
    if(ldx<=500)ldx=2000;
    if(ldy>=1000)ldy=250;
  }
}
