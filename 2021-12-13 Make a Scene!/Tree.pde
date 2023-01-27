class Tree{
  float x, y;
  Tree(float x1, float y1){
    x=x1;
    y=y1;
  }
  void display(){
    float s = 50;
    fill(95,50,20);
    rect(x,y+s*.5,s*.4,s);
    fill(15,105,5);
    triangle(x-s,y,x+s,y,x,y-s*2);
    triangle(x-s*.8,y-s,x+s*.8,y-s,x,y-s*2.4); 
  }
}
