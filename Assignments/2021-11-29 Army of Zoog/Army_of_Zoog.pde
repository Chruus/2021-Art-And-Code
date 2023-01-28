void setup() {
  size(800, 800);
  rectMode(CENTER);
}
float x=10;
float y=20;
float s=50;
void draw() {
  background(255);
  for (int i=0; i<width; i+=s*1.2) {
    for (int j=0; j<height; j+=s*2.5) {
      stroke(0);
      fill(150);
      rect(x+i, y+s*.2+j, s*.4, s*1.6);
      fill(255);
      ellipse(x+i, y-s*.6+j, s*1.2, s*1.2);
      fill(0);
      ellipse(x-s*.38+i, y-s*.6+j, s*.32, s*.64);
      ellipse(x+s*.38+i, y-s*.6+j, s*.32, s*.64);
      stroke(0);
      line(x-s*.2+i, y+s+j, x-s*.4+i, y+s*1.2+j);
      line(x+s*.2+i, y+s+j, x+s*.4+i, y+s*1.2+j);
    }
  }
}
void keyPressed() {
  if (key=='=' || key=='+') {
    s*=2;
  }
  if (key=='-' || key=='_') {
    s/=2;
  }
}
//I referenced my old code for the math, everything is rewritten though
//Also, press + to decrease the density of zoog, and - to increase the density
