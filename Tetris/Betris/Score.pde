class Score{
  int score;
  int level;
  Score(){
    level=1;
    score=0;
  }
  void display(){
    textSize(64);
    textAlign(CENTER);
    text(score,542.5,height-120);
    text(level,542.5,height-20);
    textSize(24);
    text("SCORE",542.5, height-180);
    text("LEVEL",542.5, height-80);
  }
  
  void clearLine(int numOfLines){
    if(numOfLines==1){
      score+=40*level;
    }
    if(numOfLines==2){
      score+=100*level;
    }
    if(numOfLines==3){
      score+=300*level;
    }
    if(numOfLines==4){
      score+=1200*level;
    }
  }
  void increaseScore(int increase){
    score+=increase;
  }
  int getLevel(){
    return level;
  }
  void reset(){
    level=1;
    score=1;
  }
}
