class NextPiece extends Sprite{
  
  int x;
  int y;
  int x1, x2, x3;
  int y1, y2, y3;
  
  NextPiece(int _x, int _y){
    x=_x;
    y=_y;
    x+=17.5;
    y+=17.5;
  }
  
  void display(){
    for(int i=-2; i<3; i++){
      block(i*35+x, y-175, color(175));
      block(i*35+x, y+175, color(175));
    }
    for(int i=-5; i<6; i++){
      block(x-70, i*35+y, color(175));
      block(x+70, i*35+y, color(175));
    }
  }
  void addPiece(char tetromino){
  }
}
