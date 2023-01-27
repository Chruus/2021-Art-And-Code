void setup(){
  size(400,400);
  //fullScreen();
  frameRate(60);
  colorMode(HSB);
  surface.setTitle("Clocc");
  surface.setResizable(true);
  c = new Clock(sizee,mouseX,mouseY,temp);
  ellipseMode(CENTER);
}
boolean temp;
int sizee=500;
int bgc;
Clock c;
void draw(){
  if(temp)c.setVariables(sizee,mouseX,mouseY,true);
  else c.setVariables(500,width/2,height/2,false);
  colors();
  background(bgc,255,255);
  c.display();

}
void colors(){
  bgc++;
  if(bgc>250)bgc=0;
}
void keyPressed(){
  if(key==CODED){
    if(keyCode==UP)
      sizee+=10;
    if(keyCode==DOWN)
      sizee-=10;
  }
  if(key==' ')
    temp=!temp;
}
