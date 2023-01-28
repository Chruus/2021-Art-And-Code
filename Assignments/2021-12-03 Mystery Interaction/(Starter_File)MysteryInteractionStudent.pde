void setup()
{
  size(255, 255);
  background(0);
}

void draw()
{
  background(255,0,0);
  
  for(int i=0;i<width;i+=10){
    stroke(0);
    float distance = mouseX-i;
    fill(distance);
    if(i%20==0){
    rect(i,0,10,height);
    }
  }
  for(int i=0;i<height;i+=10){
    stroke(0);
    float distance = mouseY-i;
    fill(distance);
    if(i%20==0){
    rect(0,i,width,10);
    }
  }
}
