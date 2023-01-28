class Sprite{
  
  Sprite(){
    
  }
  
  void block(float _x, float _y, color _c) {
    float bx=_x;
    float by=_y;
    color c = _c;
    pushStyle();
    beginShape();
    fill(c);
    strokeWeight(1);
    vertex(bx-8.75, by-8.75);
    vertex(bx-17.5, by-17.5);
    vertex(bx+17.5, by-17.5);
    vertex(bx+8.75, by-8.75);
    endShape();
    beginShape();
    vertex(bx+8.75, by+8.75);
    vertex(bx-8.75, by+8.75);
    vertex(bx-17.5, by+17.5);
    vertex(bx+17.5, by+17.5);
    vertex(bx+8.75, by+8.75);
    endShape();
    beginShape();
    vertex(bx+8.75, by+8.75);
    vertex(bx+8.75, by-8.75);
    vertex(bx+17.5, by-17.5);
    vertex(bx+17.5, by+17.5);
    vertex(bx+8.75, by+8.75);
    endShape();
    beginShape();
    vertex(bx-8.75, by+8.75);
    vertex(bx-8.75, by-8.75);
    vertex(bx-17.5, by-17.5);
    vertex(bx-17.5, by+17.5);
    vertex(bx-8.75, by+8.75);
    endShape();
    rect(bx, by, 21, 21);
    popStyle();
  }
  void iPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(0, 255, 255));
    block(0, 35, color(0, 255, 255));
    block(0, -35, color(0, 255, 255));
    block(0, 70, color(0, 255, 255));
    popMatrix();
  }
  
  void jPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(255, 125, 0));
    block(0, -35, color(255, 125, 0));
    block(0, 35, color(255, 125, 0));
    block(-35, 35, color(255, 125, 0));
    popMatrix();
  }
  
  void lPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(30, 30, 255));
    block(0, -35, color(30, 30, 255));
    block(0, +35, color(30, 30, 255));
    block(35, +35, color(30, 30, 255));
    popMatrix();
  }
  
  void oPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(255, 255, 0));
    block(35, 0, color(255, 255, 0));
    block(0, 35, color(255, 255, 0));
    block(35, 35, color(255, 255, 0));
    popMatrix();
  }
  
  void tPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(150, 0, 255));
    block(0, -35, color(150, 0, 255));
    block(0, +35, color(150, 0, 255));
    block(35, 0, color(150, 0, 255));
    popMatrix();
  }
  
  void sPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(0, 0, color(0, 255, 0));
    block(0, -35, color(0, 255, 0));
    block(35, -35, color(0, 255, 0));
    block(-35, 0, color(0, 255, 0));
    popMatrix();
  }
  
  void zPiece(float x, float y, float r){
    pushMatrix();
    translate(-105,-105);
    translate(x,y);
    rotate(radians(r));
    block(-17.5, 17.5, color(255, 0, 0));
    block(17.5, 17.5, color(255, 0, 0));
    block(17.5, -17.5, color(255, 0, 0));
    block(-17.5, +52.5, color(255, 0, 0));
    popMatrix();
  }
}
