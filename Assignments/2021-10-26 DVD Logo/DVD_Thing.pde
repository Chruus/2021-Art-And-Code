void setup() {
  size(550, 400);
  rectMode(CENTER);
}

boolean switchx=true;
boolean switchy=true;
float r;
float g;
float b;
int x=25;
int y=25;

void draw() {
  background(255);

  if (x>=width-25) {
    switchx=false;
    r=random(floor(0), floor(2));
    g=random(floor(0), floor(2));
    b=random(floor(0), floor(2));
  }
  if (x<=0+25) {
    switchx=true;
    r=random(floor(0), floor(2));
    g=random(floor(0), floor(2));
    b=random(floor(0), floor(2));
  }
  if (switchx==true) {
    x++;
  }
  if (switchx==false) {
    x--;
  }
  if (y>=height-25) {
    switchy=false;
    r=random(floor(0), floor(2));
    g=random(floor(0), floor(2));
    b=random(floor(0), floor(2));
  }
  if (y<=0+25) {
    switchy=true;
    r=random(floor(0), floor(2));
    g=random(floor(0), floor(2));
    b=random(floor(0), floor(2));
  }
  if (switchy==true) {
    y++;
  }
  if (switchy==false) {
    y--;
  }
  fill((int)r*255, (int)g*255, (int)b*255);
  rect(x, y, 50, 50);
  textSize(12);
  fill(255);
  if ((int)r==1) {
    if ((int)g==1) {
        fill(0);
      }    
    }
  text("DVD", x-12, y+5);
}
