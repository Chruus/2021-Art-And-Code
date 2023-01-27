class Apple{
  float aplx;
  float aply;
  
  Apple(){
    aplx=floor(random(2, 23))*32-16;
    aply=floor(random(2, 23))*32-16;
  }
  
  void display(){
    adraw();
    randomize();
  }
  
  void adraw(){
    strokeWeight(0);
    stroke(100);
    fill(255, 0, 0);
    rect(aplx, aply, 30, 30);
  }
  
  void randomize(){
    if (frameCount%6==0&&out==false) {
      if (increase) {
        respawn();
        for (int i=0; i<s.listx.size();i++){
          if(aplx==s.listx.get(i)&&aply==s.listy.get(i)){
            respawn();
            i=0;
          }
        }
       score+=3;
      }
    }
  }
  void respawn(){
    aplx=ceil(random(1, 22))*32-16;
    aply=ceil(random(1, 22))*32-16;
  }
}
