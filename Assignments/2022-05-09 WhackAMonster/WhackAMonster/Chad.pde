class Chad extends Monster{
  
  Chad(String img){
    super(img);
  }
  int xSpeed=25;
  int ySpeed=25;
  void move(){
    if(loc.x<0||loc.x>width-30){
      xSpeed=-xSpeed;
    }
    if(loc.y<0||loc.y>height-30){
      ySpeed=-ySpeed;
    }
    loc.x+=xSpeed;
    loc.y+=ySpeed;
  }
  
  void talk(){
    text("Well, actually", loc.x, loc.y);
  }
}
