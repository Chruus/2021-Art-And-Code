size(500, 500);
rectMode(CENTER);
int r=255;
int g=0;
int b=0;
int stage=1;
strokeWeight(0);
for (int i=2; i<width; i+=5) {
  if (g<255&&stage==1) {
    g+=7;
    r-=7;
    if (g>255) {stage = 2;}
  }
  if (b<255&&stage==2) {
    b+=7;
    g-=7;
    if (b>255) {stage = 3;}
  }
  if (stage==3) {
    r+=7;
    b-=7;
    if (b == 0) {stage = 1;}
  }
  fill(r, g, b);
  rect(i, height/2, 4, 30);
}
