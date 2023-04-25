class Score{
  int x;
  int y;
  int score;
  Score(int _x, int _y){
    x=_x;
    y=_y;
    score=0;
    textAlign(CENTER);
  }
  void display(){
    text(score,x,y);
  }
  void increaseScore(){
    score++;
  }
  void resetScore(){
    score=0;
  }
}
