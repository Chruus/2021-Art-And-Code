class EasterBunny extends Monster
{
  float elapsedTime;
  float lastCheck;
  EasterBunny(String file)
  {
    super(file);
    lastCheck = millis();
    elapsedTime = 600;
  }
  
  void talk()
  {
    text("Screech", loc.x  , loc.y);
  }
  
  void move()
  {
    if(millis() - lastCheck > elapsedTime)
    {
      loc.x = random(100, 900);
      loc.y = random(100, 700);
      lastCheck = millis();
    }
    
  }
}