class Grid extends Sprite{
  ArrayList <Border> Borders;
  ArrayList <ArrayList> Grid;
  
  Grid(){
    Grid = new ArrayList <ArrayList>();
    for (int i=0; i<30; i++) {
      Grid.add(new ArrayList <Character>());
      for (int j=0; j<20; j++) {
        Grid.get(i).add(' ');
      }
    }
  }
  
  void backgroundReset() {
    for (int y=0; y<30; y++) {
      for (int x=0; x<20; x++) {
        if (getPoint(x,y)>90) {
          setPoint(x,y,' ');
        }
        if (y==25) {
          setPoint(x,y,'=');
        }
      }
      int numberInRow=0;
      for (int x=4;x<15;x++){
        if(getPoint(x,y)<=90&&getPoint(x,y)>65){
          numberInRow++;
          if(numberInRow==10){
            clearLine(y);
          }
        }
      }
    }
  }
  
  void clearLine(int line){
    for(int x=4; x<15; x++){
      setPoint(x,line,' ');
    } 
    for(int y=30; y>1; y--){
      for(int x=15; x>4; x--){
        if(y<=line){
          setPoint(x,y,(char)getPoint(x,y-1));
        }
      }
    }
  }
  
  void display(){
    for (int y=0; y<30; y++) {
      for (int x=0; x<20; x++) {
        if ((char)getPoint(x,y)=='I') {
          fill(255);
          block(x*35-122.5, y*35-53, color(0, 255, 255));
        } else if ((char)getPoint(x,y)=='J') {
          fill(255);
          block(x*35-122.5, y*35-53, color(255, 125, 0));
        } else if ((char)getPoint(x,y)=='L') {
          fill(255);
          block(x*35-122.5, y*35-53, color(30, 30, 255));
        } else if ((char)getPoint(x,y)=='O') {
          fill(255);
          block(x*35-122.5, y*35-53, color(255, 255, 0));
        } else if ((char)getPoint(x,y)=='T') {
          fill(255);
          block(x*35-122.5, y*35-53, color(150, 0, 255));
        } else if ((char)getPoint(x,y)=='S') {
          fill(255);
          block(x*35-122.5, y*35-53, color(0, 255, 0));
        } else if ((char)getPoint(x,y)=='Z') {
          fill(255);
          block(x*35-122.5, y*35-53, color(255, 0, 0));
        }
      }
    }
  }
  
  void resetGrid() {
    for (int y=0; y<30; y++) {
      for (int x=0; x<20; x++) {
        setPoint(x,y,' ');
      }
    }
  }
  
  void setPoint(int x, int y, char pos){
    Grid.get(y).set(x,pos);
  }
  
  int getPoint(int x, int y){
    return (int)((char)Grid.get(y).get(x));
  }
}
