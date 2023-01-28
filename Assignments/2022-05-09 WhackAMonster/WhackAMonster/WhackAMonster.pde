
//this reference will morph into different monsters (polymorphism)
Monster m;

//keep track of the score
int score;

//keep track of clicks
int clicks;

//font variable
PFont f ;

//toggle the talk method on and off
boolean speak;

//background image
PImage b;

void setup()
{
  size(1000, 800);
  b = loadImage("background.jpg");
  f = createFont("Arial", 16, true);
  m = new Werewolf("werewolf.png");
  score = 0;
  clicks = 0;
  textFont(f, 36);
  speak = false;
 
}


void draw()
{
  surface.setTitle("Click the Monsters!!");
  image(b, 0, 0, 1000, 800);
  text("Hits: " + score + " " + "Clicks: " + clicks, width - 300, 30);
  
  
  m.display();
  m.move();   
  
  if(speak)
    m.talk();
  
}


void mousePressed()
{
  if(mouseX > m.loc.x && mouseX < m.loc.x+m.img.width && mouseY > m.loc.y && mouseY < m.loc.y + m.img.height)
    {
      score++;
      println(score);
      speak = true;
    }
  else
     speak = false;
   
    if(score == 5) //level 2
       m = new Ghost("ghost.png");
    else if(score == 10) //level 3
       m = new EasterBunny("easterbunny.png");
    else if(score == 15)
       m = new Chad("chad.png");
    else if (score == 1000)
       m = new Zoog("zoog.png");
    clicks++;
     
     
}
void mouseReleased()
{
  speak = false;
}
