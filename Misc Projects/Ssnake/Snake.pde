class Snake{
  int x;
  int y;
  boolean n,s,e,w;
  boolean timerb2;
  ArrayList<Integer> listx;
  ArrayList<Integer> listy;
  float snaker;
  float snakeg;
  float snakeb;
  float timer2;
  float last;
  
  Snake(){
    x=400;
    y=400;
    snakeg=255;
    listx = new ArrayList<Integer>();
    listy = new ArrayList<Integer>();
    listx.add(400);
    listy.add(400);
  }
  
  void display(){
    outcalc();
    controls();
    movement();
    tail();
    sdraw();
  }
  
  void outcalc(){
    if (x<32) {
      n=s=e=w=false;
      out=true;
    } else if (x>780) {
      n=s=e=w=false;
      out=true;
    } else if (y<32) {
      n=s=e=w=false;
      out=true;
    } else if (y>780) {
      n=s=e=w=false;
      out=true;
    }
    if (TailCheck(listx, listy)==true) {
      n=s=e=w=false;
      out=true;
    }
  }
  void movement(){
    if(frameCount%6==0){
    if (n==true) {y-=32;}
    if (s==true) {y+=32;}
    if (w==true) {x-=32;}
    if (e==true) {x+=32;}
    }
  }
  void tail(){
    if(frameCount%6==0){
    if(out==false){
      if (increase){
        listx.add(0,x);
        listy.add(0,y);
        for (int i=0; i<2; i++) {
          listx.add(listx.size()-1, listx.get(listx.size()-1));
          listy.add(listy.size()-1, listy.get(listy.size()-1));
        }
      } else {
        listx.add(0, x);
        listy.add(0, y);
        listx.remove(listx.size()-1);
        listy.remove(listy.size()-1);
      }
    }
  }
  }
  void sdraw(){
    for (int i=0; i<listx.size(); i++) {
      stroke(100);
      fill(snaker, snakeg, snakeb);
      rect(listx.get(i), listy.get(i), 30, 30);
    }
    if(out==true){
      if(timer2<30){timer2++;}
      else {
        timer2=0;
        timerb2=!timerb2;
      }
      if(timerb2==false){snaker=snakeb=255;}
      if(timerb2==true){snaker=snakeb=0;}
    }else snaker=snakeb=0;
  }
  void controls(){
    if(listm.size()>2){
      for(int i=0;i<listm.size();i++){
        if(listm.get(0)==listm.get(i)){
          listm.remove(0);
        }else{break;}
      }
    }
    if(listm.size()>1){
      if(listm.get(0)!=listm.get(1)&&frameCount%6==0){
        listm.remove(0);
        if(listm.get(0)==1){
          if(last!=2){n=true;s=w=e=false;last=1;}
        }else if(listm.get(0)==2){
          if(last!=1){s=true;n=w=e=false;last=2;}
        }else if(listm.get(0)==3){
          if(last!=4){w=true;n=s=e=false;last=3;}
        }else if(listm.get(0)==4){
          if(last!=3){e=true;n=s=w=false;last=4;}
        }else{
          if(listm.get(0)==1){n=true;s=w=e=false;last=1;}
          else if(listm.get(0)==2){s=true;n=w=e=false;last=2;}
          else if(listm.get(0)==3){w=true;n=s=e=false;last=3;}
          else if(listm.get(0)==4){e=true;n=s=w=false;last=4;}
        }
      }
    }
  }
  void respawn(){
    x=400;
    y=400;
    listx.clear();
    listy.clear();
    listx.add(x);
    listy.add(y);
  }
  boolean TailCheck(ArrayList<Integer>listx, ArrayList<Integer>listy) {
    for (int i=1; i<listx.size(); i++) {
      if (x==listx.get(i)&&y==listy.get(i)) {
        return true;
      }
    }
    return false;
  }
}
