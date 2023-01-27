//Name

String word;
PFont f;

void setup()
{
    size(800,600);
    f = createFont("JasmineUPCBold",36,true);
    textFont(f);
    textAlign(CENTER);
    background(0);
    word = "";
  
}

void draw(){
    if(frameCount % 30 == 0)
       println(word);
}
void rotateWord(String s,float x,float y,float r){
  
  pushMatrix();
  fill(random(50,255),random(50,255),random(50,255));
  translate(x,y);
  rotate((int)r);
  text(s,0,0);
  popMatrix();
  
  
}
  /*---1----*/
  //Write your rotateWord method. It should take a String, an x and y position, and rotation amount
  //The method should take the given word, give it a random color, rotate it and throw on the window at the given location

void keyPressed(){
  //the keyCode for enter is 10
  if(keyCode == 10){
    if((int)random(0,1000)==1)word="Zoog Not Found";
    rotateWord(word,random(40,width-40),random(40,height-40),random(0,360));
    word = "";
  }    
  else if(key == BACKSPACE)
      word = ""; //clears word*/
  else
      word += key; //adds the last key pressed to the word string
  if(key=='p'){
    save("wordpile.jpg");
  }
}
  
  
