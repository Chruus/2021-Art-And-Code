class Hold extends Sprite{
  float x;
  float y;
  char piece;
  Hold(float _x, float _y){
    x=_x;
    y=_y;
    x+=17.5;
    y+=17.5;
    piece = ' ';
  }
  
  void display(){
    for(int i=-2; i<3; i++){
      block(i*35+x, y-70, color(175));
      block(i*35+x, y+70, color(175));
      block(x-70, i*35+y, color(175));
      block(x+70, i*35+y, color(175));
    }
    
    pushMatrix();
    scale(.75);
    if(piece == 'i'){
      iPiece(x*1.525,y*2.05,0);
    }
    if(piece == 'j'){
      jPiece(x*1.55,y*2.25,0);
    }
    if(piece == 'l'){
      lPiece(x*1.5,y*2.25,0);
    }
    if(piece == 'o'){
      oPiece(x*1.5,y*2.05,0);
    }
    if(piece == 't'){
      tPiece(x*1.525,y*2.1,90);
    }
    if(piece == 's'){
      sPiece(x*1.54,y*2.3,0);
    }
    if(piece == 'z'){
      zPiece(x*1.56,y*2.15,90);
    }
    popMatrix();
  }
  void setPiece(char _piece){
    piece=_piece;
  }
  char getPiece(){
    return piece;
  }
}
