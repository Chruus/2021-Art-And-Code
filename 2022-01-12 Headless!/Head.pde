class Head{
  Head(int _x, int _y){
    x=_x;
    y=_y;
    zgx=_x;
    zgy=_y+75;
  }
  int zgx,zgy;
  int x,y;
  void display(){
    pushMatrix();
    translate(x-315,y-225);
    scale(.75);
    //Head
    fill(#EBA787);
    beginShape();
    vertex(334,288);
    bezierVertex(331,409,465,467,479,401);
    bezierVertex(488,353,507,330,518,301);
    bezierVertex(507,267,534,264,530,246);
    bezierVertex(542,205,525,230,518,153);
    bezierVertex(503,125,479,104,435,106);
    bezierVertex(361,123,365,132,344,171);
    bezierVertex(322,215,343,221,326,202);
    bezierVertex(299,202,308,228,311,265);
    bezierVertex(311,265,321,306,336,278);
    endShape();
    
    //Eyebrows (very important!!)
    fill(68, 43, 33);
    beginShape();
    vertex(475,226);
    bezierVertex(459,201,440,183,414,202);
    bezierVertex(435,195,456,205,475,226);
    endShape();
    
    beginShape();
    vertex(495,251);
    bezierVertex(502,229,520,245,526,256);
    bezierVertex(512,246,499,243,495,251);
    endShape();
    
    //Right eye
    fill(240);
    beginShape();
    vertex(414,236);
    bezierVertex(430,221,453,232,453,251);
    bezierVertex(439,255,420,249,414,236);
    endShape();
    fill(35);
    ellipse(433,239,15,15);
    
    //Nose
    noFill();
    bezier(498,230,487,252,494,254,494,276);
    bezier(494,276,494,254,487,252,498,230);
    line(494,276,498,305);
    bezier(498,305,515,315,500,338,478,333);
    bezier(478,333,468,318,456,313,456,332);
    
    //Mouth
    fill(#E9956D);
    beginShape();
    vertex(421,361);
    bezierVertex(441,363,454,349,468,360);
    bezierVertex(478,356,482,363,490,364);
    bezierVertex(485,373,474,381,460,378);
    bezierVertex(436,377,432,361,421,361);
    endShape();
    noFill();
    bezier(421,361,450,358,468,374,490,364);
    popMatrix();
  }
  void zisplay(){
    int zgs=150;
    pushStyle();
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    popStyle();
  }
}
