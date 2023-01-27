//Christopher Petty 
void setup(){
  size(900, 650);
  background(255);
  Heads = new ArrayList<Head>();
  Zeads = new ArrayList<Head>();
}
Body one, two, three;
boolean booleanz;
ArrayList<Head> Heads;
ArrayList<Head> Zeads;
void draw(){
  one = new Body("one.png", 20, 75);
  one.display();
  two = new Body("two.png", 250, 250);
  two.display();
  three = new Body("three.png", 500, 100);
  three.display();
  for(int i=0;i<Heads.size();i++){
    Heads.get(i).display();
  }
  for(int i=0;i<Zeads.size();i++){
    Zeads.get(i).zisplay();
  }
  
}
void mousePressed(){
  if(booleanz) Zeads.add(new Head(mouseX,mouseY));
  else Heads.add(new Head(mouseX,mouseY));
  
}
void keyPressed(){
  if(key=='z')booleanz=!booleanz;
}

//Write your action method to draw a head at a given a location (needs parameters)
