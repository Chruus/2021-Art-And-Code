class Ghost extends Monster {//needs to inherit from Monster

  Ghost(String file) {
    super(file);
    //needs to set up the parent attribute
  }
 //needs to talk, what should a ghost say?
  void talk(){
    text("BOO!",loc.x, loc.y);
  }
 
 //needs to move, the ghost will continuously float to the top
  void move(){
   loc.y-=10;
   loc.x=random(loc.x-2,loc.x+2);
   if(loc.y<0){
     loc.x=random(50,width-50);
     loc.y=height;
   }
  }
  
  
}
