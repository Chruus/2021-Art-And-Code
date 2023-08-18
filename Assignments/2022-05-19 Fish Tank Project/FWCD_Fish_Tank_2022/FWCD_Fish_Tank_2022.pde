PImage mhs;
ArrayList<AnimatedObject> objs = new ArrayList<AnimatedObject>();

int SAND_HEIGHT = 120;

void setup() {
  mhs = loadImage("capitol.jpg"); 
  fullScreen(P2D);
  mhs.resize(width, height-SAND_HEIGHT);
  smooth();

  //Instantiate your object.
  //put your object in fish tank list named objs using the model below.
 // objs.add( new YOUROBJECT() );
  objs.add(new AndrewFish());
  objs.add(new AndyFish());
  objs.add(new ArjunVasudevanFish(width/3, height/3, 20, 20, 50, 50, 3));
  objs.add(new BlakeBrownFish());
  objs.add(new CalStonesiferFish());
  objs.add(new DabinLeeFish());
  objs.add(new PatrickDrezFish(new PApplet()));
  objs.add(new RichardFish(width*2/3, height*2/3, 5));
  objs.add(new RickyEspinoFish());
  objs.add(new TuckerGrubbsFish());
  objs.add(new VailDickeyFish());
  objs.add(new WalkerGainesFish());
  objs.add(new warden());
  objs.add(new ChristopherPettyFish(this , true));
   
}


//DO NOT CHANGE CODE BELOW!!!!!!!
//DO NOT CHANGE CODE BELOW!!!!!!!
//DO NOT CHANGE CODE BELOW!!!!!!!
//DO NOT CHANGE CODE BELOW!!!!!!!
//EVER. PERIOD. END OF STORY.
void draw() {
  
  drawTankBackground();                    
 
  PVector[] locations = new PVector[objs.size()];
  for (int i=0; i<objs.size(); i++) {
      AnimatedObject obj = objs.get(i);
      locations[i] = new PVector(obj.getX(), obj.getY());
  }

  for (AnimatedObject ao: objs) {
      ao.display();
      ao.move(locations);
      resetMatrix();           
    }
  
}

void drawTankBackground() {
    
  rectMode(CORNER);
  tint(0,130,237);
  image(mhs,0,0);
  //background(50, 50, 255);
  color topColor = color(168, 168, 50);
  color bottomColor = color(68,68,0);
  float rDiff = red(topColor) - red(bottomColor);
  float gDiff = green(topColor) - green(bottomColor);
  float bDiff = blue(topColor) - blue(bottomColor);
  rDiff /= SAND_HEIGHT;
  gDiff /= SAND_HEIGHT;
  bDiff /= SAND_HEIGHT;
  for(int i =0; i<SAND_HEIGHT; i++)
  {
      stroke(red(topColor)-i*rDiff,green(topColor)-i*gDiff, blue(topColor)-i*bDiff);
      line(0, height-SAND_HEIGHT+i, width, height-SAND_HEIGHT+i);
  }

 
}
