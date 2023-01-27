void setup(){
  size(600,600);
  background(255);
}

void draw(){
  beginShape();
  vertex(mouseX+80,mouseY+65);
  vertex(mouseX,mouseY-65);
  vertex(mouseX-80,mouseY+65);
  vertex(mouseX+100,mouseY-20);
  vertex(mouseX-100,mouseY-20);
  vertex(mouseX+80,mouseY+65);
  endShape();
  
}
