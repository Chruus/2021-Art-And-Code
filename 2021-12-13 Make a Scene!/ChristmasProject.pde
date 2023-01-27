void setup(){
//Misc Setup
  fullScreen();
  rectMode(CENTER);
  ass = new Assets();
  Trees = new ArrayList<Tree>();
  Clouds = new ArrayList<Cloud>();
  Zoogs = new ArrayList<Zoog>();
  z2 = new Zoog();
  p = createFont("Algerian-48.vlw",48);
//Ski lifts
  l1 = new LiftUp();
  l2 = new LiftUp();
  l3 = new LiftUp();
  d1 = new LiftDown();
  d2 = new LiftDown();
  d3 = new LiftDown();
//Trees
  for(int i=0; i<7;i++){Trees.add(new Tree(random(0,100),350+i*120));}
  for(int i=7; i<13;i++){Trees.add(new Tree(random(100,200),450+i*120));}
  for(int i=13; i<18;i++){Trees.add(new Tree(random(200,300),i*120-1000));}
  for(int i=18; i<22;i++){Trees.add(new Tree(random(300,400),i*120-1500));}
  for(int i=22; i<25;i++){Trees.add(new Tree(random(400,500),i*120-1800));}
  for(int i=25; i<28;i++){Trees.add(new Tree(random(500,600),i*120-2200));}
  for(int i=28; i<30;i++){Trees.add(new Tree(random(600,700),i*120-2450));}
  for(int i=30; i<32;i++){Trees.add(new Tree(random(700,800),i*120-2600));}
  for(int i=32; i<34;i++){Trees.add(new Tree(random(800,900),i*120-2775));}
  for(int i=0;i<30;i++){Clouds.add(new Cloud());}
}
ArrayList <Tree> Trees;
ArrayList <Cloud> Clouds;
ArrayList <Zoog> Zoogs;
Assets ass;
boolean b1=false;
boolean b2=false;
boolean b3=false;
color red=color(255,0,0);
color green=color(0,255,0);
int j=0;
LiftDown d1;
LiftDown d2;
LiftDown d3;
LiftUp l1;
LiftUp l2;
LiftUp l3;
PFont p;
Zoog z1;
Zoog z2;

void draw(){
//Gradient Background
  for(float i=0;i<height;i+=10){
    pushStyle();
    fill(20-i*.04,10-i*.02,125-i*.25);
    stroke(20-1*.04,10-i*.08,125-i*.25);
    rect(width/2,i,width,12);
    popStyle();
  }
//Mountain Background
  ass.mountain(65,365);
  ass.mountain(500,340);
  ass.mountain(300,325);
  ass.mountain(1600,355);
  ass.mountain(1100,300);
  ass.mountain(1350,275);
  ass.mountain(750,270);
  
//Clouds
  for(int i=0;i<Clouds.size();i++){Clouds.get(i).display();}
  
//Sign
  ass.hill1();
  pushStyle();
  fill(95,50,20);
  noStroke();
  rect(width/2-150,height/2-100,300,150);
  rect(width/2-290,height/2,20,50);
  rect(width/2-10,height/2,20,50);
  if(frameCount%30>15)fill(red);else fill(green);
  for(int i=670;i<960;i+=40){
    ellipse(i,height/2-165,10,10);
    ellipse(i,height/2-45,10,10);
  }
  for(int i=375;i<510;i+=40){
    ellipse(width/2-10,i,10,10);
    ellipse(width/2-290,i,10,10);
  }
  if(frameCount%30>15)fill(green);else fill(red);
  for(int i=690;i<960;i+=40){
    ellipse(i,height/2-165,10,10);
    ellipse(i,height/2-45,10,10);
  }
  for(int i=395;i<510;i+=40){
    ellipse(width/2-10,i,10,10);
    ellipse(width/2-290,i,10,10);
  }
  textFont(p);
  textAlign(CENTER);
  text("Merry",width/2-150,height/2-120);
  text("Christmas",width/2-150,height/2-60);
  popStyle();

//Ski Lift Cables
  ass.hill2();
  pushStyle();
  strokeWeight(8);
  line(2000,200,0,1200);
  line(2000,300,0,1300);
  popStyle();
  
//Ski Lifts
  l1.display();
  d1.display();
  if(frameCount%250==0)b1=true;
  if(b1==true){
    l2.display();
    d2.display();
  }
  if(frameCount%500==0)b2=true;
  if(b2==true){
    l3.display();
    d3.display();
  }
  z2.rider();
  z2.rider2();
  if(l3.lux>width)Zoogs.add(new Zoog());
  if(l1.lux>width)Zoogs.add(new Zoog());
  if(Zoogs.size()>1)Zoogs.get(Zoogs.size()-1).display();
  if(Zoogs.size()>2)Zoogs.remove(0); 

//Trees
  ass.hill3();
  for(int i=0;i<Trees.size();i++)Trees.get(i).display();
}
