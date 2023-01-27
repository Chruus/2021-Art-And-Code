abstract class Monster
{
  PImage img;
  PVector loc;
  
  Monster(String file)
  {
    img = loadImage(file);
    loc = new PVector(random(100, 500), random(100, 500));
  }
  
  void display()
  {
    image(img, loc.x, loc.y, 100, 100);
  }
  void move(){
    
  }
  void talk(){
    
  }
  //add the behaviors that we want, but aren't sure at this point how they should work
  
} 
