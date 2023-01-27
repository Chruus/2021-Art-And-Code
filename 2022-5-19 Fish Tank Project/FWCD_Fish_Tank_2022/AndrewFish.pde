class AndrewFish extends AnimatedObject {
  int frame;
  PImage mordecai;
  int xCoordinate;
  int yCoordinate;
  float xSpeed;
  float ySpeed;

  AndrewFish() {
    mordecai=loadImage("mordec.jpg");
    mordecai.resize(200, 200);
    xSpeed=2;
  } 
  void display() {
    pushStyle();
    noTint();
    image(mordecai, 960, 0);
 
  
      noTint();
      
     fill(#86A1FF);
      rect(xCoordinate+1085,yCoordinate+200,15,100);
      rect(xCoordinate+1115,yCoordinate+200,15,100);
      
   
    
  }


  void move() {
    

    xCoordinate+=xSpeed;
    yCoordinate+=ySpeed;

    if (xCoordinate>width||xCoordinate<20)
    {

      xSpeed=-xSpeed;
    }
    if (yCoordinate>height||yCoordinate<20)
    {
      ySpeed=-ySpeed;
    }
  }

  int getX() {
    return (xCoordinate);
  }

  int getY() {
    return(yCoordinate);
  }
}//end class
