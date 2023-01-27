void setup(){
  size(800,800);
  rectMode(CENTER);
  a = new ArrayList<ArrayList<Flower>>();
  for(int i=0;i<4;i++){
    a.add(new ArrayList<Flower>());
  }
}
ArrayList<ArrayList<Flower>> a;
int r;
void draw(){
  outer:
  for (int j=0;j<4;j++){ inner:
    for (int i=0;i<a.get(j).size();i++){
    if(a.get(j).size()>0&&j==0){a.get(j).get(i).display1();}
    if(a.get(j).size()>0&&j==1){a.get(j).get(i).display2();}
    if(a.get(j).size()>0&&j==2){a.get(j).get(i).display3();}
    if(a.get(j).size()>0&&j==3){a.get(j).get(i).display4();}
    }
  }
  r=(int)random(5,1);
}
void keyPressed(){
  if(key=='1'){
    a.get(0).add(new Flower());
  }
  if(key=='2'){
    a.get(1).add(new Flower());
  }
  if(key=='3'){
    a.get(2).add(new Flower());
  }
  if(key=='4'){
    a.get(3).add(new Flower());
  }
}
