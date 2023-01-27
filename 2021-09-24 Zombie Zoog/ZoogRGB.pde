void setup() {
  size(500, 500);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

float x=240;
float y=145;
float xmove=1;
float ymove=1;
int red=0;
int green=100;
int blue=200;
int speed=1;
int trans=255;
color c;
boolean xpos=true;
boolean ypos=true;
boolean redb=true;
boolean greenb=true;
boolean blueb=true;
boolean lights=true;

void draw() {
  background(trans);

  //Body
  stroke(0,trans);
  fill(150,trans);
  rect(x, y, 20, 100);

  //Head
  fill(255,trans);
  ellipse(x, y-30, 60, 60);

  //Eyes
  fill(c);
  ellipse(x-19, y-30, 16, 32);
  ellipse(x+19, y-30, 16, 32);

  //Legs
  stroke(0,trans);
  line(x-10, y+50, x-20, y+60);
  line(x+10, y+50, x+20, y+60);

  c=color(red,green,blue);
//Random Colors
  if(red>255||red<0){redb=!redb;}
  if(redb==true){red=red+1;}
  if(redb==false){red=red-1;}
  if(green>255||green<0){greenb=!greenb;}
  if(greenb==true){green=green+1;}
  if(greenb==false){green=green-1;}
  if(blue>255||blue<0){blueb=!blueb;}
  if(blueb==true){blue=blue+1;}
  if(blueb==false){blue=blue-1;}
//Random Movement
  if(x>width-30||x<30){xpos=!xpos;}
  if(xpos==true){x=x+speed;}
  if(xpos==false){x=x-speed;}
  if(y>height-60||y<60){ypos=!ypos;}
  if(ypos==true){y=y+speed;}
  if(ypos==false){y=y-speed;}
  
  textMode(CENTER);
  fill(0,0,255);
  text("Speed: "+speed,height/2,32);
//Lights On/Off
  if(lights==false){trans=0;}
  if(lights==true){trans=255;}
}

void keyPressed(){
  //Increase Speed
  if(key==' '){speed=speed+1;}
  //Reset Speed (if zoog gets stuck in wall, increase his speed)
  if(key=='r'){
    if(x<width-30||x>30){
      if(y<height-60||x>60){speed=1;}}
    if(x>width-30||x<30){
      if(y>height-60||y<60){speed=-1;}}
  }
  if(key=='l'){lights=!lights;}
}
