class Werewolf extends Monster //inherits from Werewolf
{
  Werewolf(String file)
  {
    super(file);
    xSpeed=10;
  }
  int xSpeed;
  //so we now know how a Werewolf speaks, so this is where we add his speech
  void talk()
  {
    text("Roar", loc.x, loc.y);
  }
  
  //we also know how the Werewolf should move
  void move(){
    if(loc.x > width || loc.x < 0){
      xSpeed=-xSpeed;
    }
    loc.x+=xSpeed;
  }
} //<>//
