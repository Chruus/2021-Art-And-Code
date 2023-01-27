class Assets{
  void border(){
    fill(50);
    strokeWeight(0);
    rect(width/2,height/2,width,height);
    fill(25);
    rect(width/2,height/2,width-64,height-64);
  }

  void grid(){
    stroke(75);
    strokeWeight(1);
    for (int i=32; i<width; i+=32) {line(i, 32, i, 768);}
    for (int i=32; i<height; i+=32) {line(32, i, 768, i);}
  }
  void score(){
    fill(200);
    textSize(20);
    text("Length: "+(int)score, 32, 24);
    text("High Score: "+(int)scoreHi,625,24);
    if (out==true) {
      fill(255, 0, 0);
      textSize(32);
      text("Game Over", 315, 410);
      if(score>scoreHi){scoreHi=score;try{output.write(scoreHi+"\n"); output.flush(); output.close();} catch(Exception e){}}
    }
  }
}
