class FallingPiece extends Sprite{
  int time;
  int x;
  int y;
  int x1, x2, x3, y1, y2, y3;
  
  float rotateState;
  float speed;
    
  boolean canMoveRight, canMoveLeft;
  boolean fall;
  boolean firstLeft=true, firstRight=true;
  boolean secondLeft=true, secondRight=true;
  boolean timeb;
  boolean iPiece, jPiece, lPiece, oPiece, tPiece, sPiece, zPiece;
  
  FallingPiece() {
    x=6;
    y=1;
    speed=30;
  }
  
  void display() {
    if((char)whichPiece()=='i')iPiece();
    if((char)whichPiece()=='j')jPiece();
    if((char)whichPiece()=='l')lPiece();
    if((char)whichPiece()=='o')oPiece();
    if((char)whichPiece()=='t')tPiece();
    if((char)whichPiece()=='s')sPiece();
    if((char)whichPiece()=='z')zPiece();
  }
  
  void down(){
    if(frameCount%3==0){
      y++;
    }
  }
  
  void respawn(char _r) {
    x=9;
    y=4;
    rotateState=1;
    char r = _r;
    if(r=='i'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      iPiece=true;
      x=10;
    }
    else if(r=='j'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      jPiece=true;
    }
    else if(r=='l'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      lPiece=true;
      y=3;
    }
    else if(r=='o'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      oPiece=true;
    }
    else if(r=='t'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      tPiece=true;
      y=3;
    }
    else if(r=='s'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      sPiece=true;
    }
    else if(r=='z'){
      iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
      zPiece=true;
    }
    canMoveRight=canMoveLeft=true;
//    rotateState=0;
  }
  //First is Center
  void iPiece() {
    //x
    //x
    //m
    //x
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    iPiece=true;
    if (rotateState==1||rotateState==3) {
      x1=x-1;
      y1=y;
      x2=x-2;
      y2=y;
      x3=x+1;
      y3=y;
      super.iPiece(x*35-17.5, y*35+17.5*3,90);
    } else {
      x1=x;
      y1=y-1;
      x2=x;
      y2=y-2;
      x3=x;
      y3=y+1;
      super.iPiece(x*35-17.5, y*35+17.5,0);

    }
  }
  
  void jPiece() {
    // x
    // m
    //xx
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    jPiece=true;
    super.jPiece(x*35-17.5, y*35+17.5*3,rotateState*90);
        if (rotateState==0) {
      x1=x;
      y1=y-1;
      x2=x;
      y2=y+1;
      x3=x-1;
      y3=y+1;
    }
    if (rotateState==1) {
      x1=x-1;
      y1=y;
      x2=x-1;
      y2=y-1;
      x3=x+1;
      y3=y;
    }
    if (rotateState==2) {
      x1=x;
      y1=y-1;
      x2=x+1;
      y2=y-1;
      x3=x;
      y3=y+1;
    } 
    if (rotateState==3) {
      x1=x-1;
      y1=y;
      x2=x+1;
      y2=y;
      x3=x+1;
      y3=y+1;
    }
  }
  
  void lPiece() {
    //x
    //m
    //xx
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    lPiece=true;
    super.lPiece(x*35-17.5, y*35+17.5*3,rotateState*90);
      if (rotateState==0) {
      x1=x;
      y1=y-1;
      x2=x;
      y2=y+1;
      x3=x+1;
      y3=y+1;
    }
    if (rotateState==1) {
      x1=x+1;
      y1=y;
      x2=x-1;
      y2=y;
      x3=x-1;
      y3=y+1;
    }
    if (rotateState==2) {
      x1=x;
      y1=y-1;
      x2=x-1;
      y2=y-1;
      x3=x;
      y3=y+1;
    } 
    if (rotateState==3) {
      x1=x-1;
      y1=y;
      x2=x+1;
      y2=y;
      x3=x+1;
      y3=y-1;
    }
  }
  
  void oPiece() {
    //xx
    //mx
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    oPiece=true;
    super.oPiece(x*35-17.5, y*35+17.5,0);
    x1=x;
    y1=y-1;
    x2=x+1;
    y2=y;
    x3=x+1;
    y3=y-1;

  }
  
  void tPiece() {
    //x
    //mx
    //x
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    tPiece=true;
    pushMatrix();
    super.tPiece(x*35-17.5, y*35+17.5*3,rotateState*90);
    popMatrix();
    if (rotateState==0) {
      x1=x;
      y1=y-1;
      x2=x+1;
      y2=y;
      x3=x;
      y3=y+1;
    }
    if (rotateState==1) {
      x1=x+1;
      y1=y;
      x2=x;
      y2=y+1;
      x3=x-1;
      y3=y;
    }
    if (rotateState==2) {
      x1=x;
      y1=y-1;
      x2=x-1;
      y2=y;
      x3=x;
      y3=y+1;
    } 
    if (rotateState==3) {
      x1=x+1;
      y1=y;
      x2=x;
      y2=y-1;
      x3=x-1;
      y3=y;
    }
  }
  void sPiece() {
    // xx
    //xm
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    sPiece=true;
    if (rotateState==1||rotateState==3) {
      super.sPiece(x*35-17.5, y*35+17.5*3,0);
      x1=x;
      y1=y-1;
      x2=x+1;
      y2=y-1;
      x3=x-1;
      y3=y;
    } else {
      super.sPiece(x*35-17.5*3, y*35+17.5*3,90);
      x1=x-1;
      y1=y;
      x2=x-1;
      y2=y-1;
      x3=x;
      y3=y+1;
    }
  }
  
  void zPiece() {
    //xx
    // mx
    iPiece=jPiece=lPiece=oPiece=tPiece=sPiece=zPiece=false;
    zPiece=true;
    if (rotateState==1||rotateState==3) {
      super.zPiece(x*35, y*35,90);
      x1=x;
      y1=y-1;
      x2=x-1;
      y2=y-1;
      x3=x+1;
      y3=y;
    } else {
      super.zPiece(x*35, y*35+35,0);
      x1=x+1;
      y1=y;
      x2=x+1;
      y2=y-1;
      x3=x;
      y3=y+1;
    }
  }
  
  void canMoveLeft(){
    canMoveLeft=true;
  }
  void canMoveRight(){
    canMoveRight=true;
  }
  void cannotMoveLeft(){
    canMoveLeft=false;
  }
  void cannotMoveRight(){
    canMoveRight=false;
  }
  
  void moveLeft() {
    if (canMoveLeft){
      if(firstLeft){
        x--;
        firstLeft=false;
      }
      else if(secondLeft){
        startTime(12);
        if(checkTime()){
          x--;
          secondLeft=false;
        }
      }
      else {
        startTime(5);
        if(checkTime()){
          x--;
        }
      }
    }
  }
  
  void resetLeft(){
    firstLeft=secondLeft=true;
    time=0;
  }
  
  void moveRight() {
    if (canMoveRight){
      if(firstRight){
        x++;
        firstRight=false;
      }
      else if(secondRight){
        startTime(12);
        if(checkTime()){
          x++;
          secondRight=false;
        }
      }
      else {
        startTime(5);
        if(checkTime()){
          x++;
        }
      }
    }
  }
  
  void resetRight(){
    firstRight=secondRight=true;
    time=0;
  }
  
  void startTime(int endTime){
    timeb=false;
    time++;
    if(time>=endTime){
      timeb=true;
      time=0;
    }
  }
  
  boolean checkTime(){
    if(timeb)return true;
    return false;
  }
  
  void increaseSpeed(){
    if(speed>20){
      speed-=10;
    }
    if(speed<=20||speed>5){
      speed-=5;
    }
    else if(speed<=5&&speed>2){
      speed--;
    }
    else speed=2;
  }
  
  void decreaseSpeed(){
    speed+=5;
  }
  
  void gravity() {
    if (frameCount%speed==0) {
      y++;
      y1++;
      y2++;
      y3++;
    }
  }
  
  void rotateUpdate() {
    if (rotateState<3)rotateState++;
    else rotateState=0;
  }
  
  char whichPiece() {
    if (iPiece)return 'i';
    if (jPiece)return 'j';
    if (lPiece)return 'l';
    if (oPiece)return 'o';
    if (tPiece)return 't';
    if (sPiece)return 's';
    if (zPiece)return 'z';
    return ' ';
  }
  
  int getPos(char xy, int tile) {
    if (xy == 'x') {
      if (tile==1) {
        return x;
      } else if (tile==2) {
        return x1;
      } else if (tile==3) {
        return x2;
      } else if (tile==4) {
        return x3;
      }
    }
    if (xy == 'y') {
      if (tile==1) {
        return y;
      } else if (tile==2) {
        return y1;
      } else if (tile==3) {
        return y2;
      } else if (tile==4) {
        return y3;
      }
    }
    return 0;
  }

}
