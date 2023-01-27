//Christopher Petty

void setup(){
  size(500, 500);

  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw(){
//Body
  background(255);
  stroke(0);
  fill(150);
  rect(mouseX, mouseY+45, 20, 100);
 
//Head
  fill(255);
  ellipse(mouseX, mouseY+15, 60, 60);
 
//Eyes
  fill(0);
  ellipse(mouseX-19, mouseY+15, 16, 32);
  ellipse(mouseX+19, mouseY+15, 16, 32);

//Legs
  stroke(0);
  line(mouseX-10, mouseY+95, pmouseX-20, pmouseY+105);
  line(mouseX+10, mouseY+95, pmouseX+20, pmouseY+105);
}
