void setup(){
  fullScreen(P3D); //makes sketch fullscreen and allows you render 3D shapes
  //Note: Some Mac graphic cards have issues with this lab
}

float x=0;
float y=255;

void draw(){
  y=y-0.3;
  background(0, 0, y);
  
  noStroke();
  lights(); //adds shading effect
  fill(#E9FF05);

  float x2=random(-2,2);
  float y2=random(-2,2);
  translate(width/2+x2, height/2+y2, 0); //sets the origin of the sketch Note: 0 is the Z coordinate!
  
  x=x+0.1;
  sphere(25+x); //makes a sphere at the origin 25 pixels in diameter
}
