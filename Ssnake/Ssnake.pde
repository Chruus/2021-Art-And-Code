import java.util.*; //<>//
import java.io.*;

void setup() { 
  size(800, 800);
  frameRate(60);
  rectMode(CENTER);
  s = new Snake();
  ass = new Assets();
  a = new Apple();  
  listm = new ArrayList<Integer>();
  listm.add(0);
  File f = new File("SnakeHighScore");
  String path = f.getAbsolutePath();
  try{
  output =  new FileWriter(new File(path),true); 
  in = new Scanner(new File(path));
  String lastScore = "0";
  while(in.hasNextLine())
    lastScore = in.nextLine();
    scoreHi = Float.parseFloat(lastScore);
  }
  catch(Exception e){
    e.printStackTrace();
  }
}

Apple a;
ArrayList <Integer> listm;
Assets ass;boolean out=false;
boolean increase;
FileWriter output;
float score=1;
float scoreHi=0;

Scanner in;
Snake s;

void draw() {
  background(25);
  ass.border();
  ass.grid();
  ass.score();
  a.display();
  s.display();
  
  if(s.x==a.aplx&&s.y==a.aply)increase=true;else increase=false;

  if(listm.size()>1)println(listm.get(0),listm.get(1));
  else println(listm.get(0));
}
void keyPressed() {
  if(key==CODED){
    if(keyCode==UP){
      listm.add(listm.size(),1);
    }
    if(keyCode==DOWN){
      listm.add(listm.size(),2);
    }
    if(keyCode==LEFT){
      listm.add(listm.size(),3);
    }
    if(keyCode==RIGHT){
      listm.add(listm.size(),4);
    }
  }    
  if (key==' ') {
    if (out==true) {
      s.respawn();
      a.respawn();
      score=1;
      out=false;
    }
  }
}
