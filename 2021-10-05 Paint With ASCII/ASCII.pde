//For Random Letters
void setup(){
  size(1200,800);
  frameRate(240);
  background(255);
  textAlign(CENTER);
  //Incriment Letter
  z=(char)97;
  s=30;
}

boolean random=false;
char z;
float x;
float y;
float r;
float g;
float b;
float s;

void draw(){
//Letter Position
  x=mouseX;
  y=mouseY;
//Random Color
  r=random(ceil(0),ceil(255));
  g=random(ceil(0),ceil(255));
  b=random(ceil(0),ceil(255));
//Random Size
  if(random==true){s=random(50,350);}
//Random Letter
  if(random==true){z=(char)random(97,122);}

}
void mouseClicked(){
  textSize(s);
  fill(r,g,b);
  text(z,x,y);
//Incrementing Letters
  if(random==false){
    if(z<=122){
      if(z>=97){z++;}
    if(z>122){z=(char)64;}
  }
    if(z<=90){
      if(z>=64){z++;}
    if(z>90){z=(char)97;}
    }
  }
  if(random==false){s=s+10;}
}
void keyPressed(){
//Changing Modes
  if(key=='r'){
  random=!random;
  background(255);
  }
}
