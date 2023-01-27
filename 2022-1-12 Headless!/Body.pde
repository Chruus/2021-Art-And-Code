class Body{
  
  PImage body;
  int x, y;
  
  Body(String file, int start_x, int start_y){
    body = loadImage(file);
    x = start_x;
    y = start_y;
  }
  
  void display(){
    image(body, x, y);
  }
}