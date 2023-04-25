class Score {
  Score() {
    score=0;
    scoreboard =  loadImage("score.png");
  }
  int score, bestScore;
  boolean dead;
  PImage scoreboard;
  void display() {
    fill(0);
    textFont(bigFont);
    text(score, width/2, height/9);
  }
  void displayEnd() {
    pushMatrix();
    image(scoreboard, width/2-70, height/2-100);
    textFont(medFont);
    text(score, width/2, height/2-15);
    if(score>=bestScore)bestScore=score;
    text(bestScore, width/2, height/2+55);
    popMatrix();
  }
  void increase() {
    score++;
  }
  void resetScore() {
    score=0;
  }
}
