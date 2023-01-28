//Plan: Create grid w/ 2d array, everything based on that grid. Make collisions based on if left, right, or bottom has a block. Grid will save your shit lol.
//Falling piece for the current moving piece, once falling piece has collision w/ bottom, copy it to a piece and respawn the falling piece as a new piece

//Grid legend: 0 = not used | 1-7 = falling piece | 8-14 = set piece (used to retain color, all will have the same purpose
//https://simon.lc/the-history-of-tetris-randomizers

void setup() {
  size(840, 840, P2D);
  rectMode(CENTER);
  fp = new FallingPiece();
  grid = new Grid();
  hold = new Hold(525,105);
  np = new NextPiece(525,420);
  score = new Score();
  bag = new ArrayList <Character>();
  Borders = new ArrayList <Border>();
  Borders.add(new Border(17.5, 437.5, true, 840));
  Borders.add(new Border(402.5, 437.5, true, 840));
  Borders.add(new Border(227.5, 17.5, false, 420));
  Borders.add(new Border(227.5, 822.5, false, 420));
  t1 = new Timer();
  respawn(false);
}

ArrayList <Border> Borders;
ArrayList <Character> bag;

boolean collides;
boolean down, left, right;

FallingPiece fp;

Grid grid;

Hold hold;

NextPiece np;

Score score;

Timer t1;


void draw() {
  background(45, 45, 65);
  for (int i=0; i<Borders.size(); i++) {
    Borders.get(i).display();
  }
  stroke(0);
  for (int i=35; i<=420-35; i+=35) {
    line(i, 35, i, height-35);
  }
  hold.display();
  
  fp.display();
  
  grid.backgroundReset();
  grid.display();
  grid.display();
  
  np.display();
  
  score.display();
  
  blockCollision();
  borderCollision();
  
  
  if(canMove("down")){
    fp.gravity();
  } 
  if (down) {
    if(canMove("down")){
      fp.down();
    }
  }else{
    if (right&&canMove("right")) {
      fp.moveRight();
    }
    if (left&&canMove("left")) {
      fp.moveLeft();
    }
  }


  for (int i=0; i<30; i++) {
    println(grid.Grid.get(i));
  }
  println();
}

void keyPressed() {
  if (key==CODED) {
    if (keyCode==LEFT&&canMove("left")) {
      left=true;
    }
    if (keyCode==RIGHT&&canMove("right")) {
      right=true;
    }
    if (keyCode==UP&&canMove("down")) {
      fp.rotateUpdate();
    }
    if (keyCode==DOWN) {
      down=true;
    }
  }
  if (key=='c') {
    hold();
  }
  
  if (key=='r') {
    grid.resetGrid();
    respawn(true);
  }
  if (key=='=' || key=='+') {
    fp.increaseSpeed();
  }
  if (key=='-') {
    fp.decreaseSpeed();
  }
}

void keyReleased() {
  if (key==CODED) {
    if (keyCode==DOWN) {
      down=false;
    }
    if (keyCode==LEFT) {
      left=false;
      fp.resetLeft();
    }
    if (keyCode==RIGHT) {
      right=false;
      fp.resetRight();
    }
  }
}


void blockCollision() {
  for (int j=1; j<5; j++) {
    grid.setPoint(fp.getPos('x', j), fp.getPos('y', j), fp.whichPiece());
    if (fp.getPos('x', j)>0&&fp.getPos('x', j)<23&&fp.getPos('y', j)>2&&fp.getPos('y', j)<26) {
      if (grid.getPoint(fp.getPos('x', j), fp.getPos('y', j)+1)<=90&&grid.getPoint(fp.getPos('x', j), fp.getPos('y', j)+1)>=60) {
        if (down) {
          t1.startTime(15);
          if (t1.checkTime()) {
            respawn(true);
            break;
          }
        } else {
          t1.startTime(45);
          if (t1.checkTime()) {
            respawn(true);
            break;
          }
        }
      }
    }
  }
}

void borderCollision() {
  for (int i=0; i<24; i++) {
    if (grid.getPoint(4, i)>90) {
      fp.x++;
    }
    if (grid.getPoint(5, i)>90) {
      fp.cannotMoveLeft();
      break;
    } else fp.canMoveLeft();

    if (grid.getPoint(15, i)>90) {
      fp.x--;
    }
    if (grid.getPoint(14, i)>90) {
      fp.cannotMoveRight();
      break;
    } else fp.canMoveRight();
  }
}

void respawn(boolean add) {
  if (bag.size()==0) {
    refillBag();
  }
  int i = (int)random(0, bag.size());
  if(add)addGrid();
  fp.respawn(bag.get(i));
  bag.remove(i);
}

void respawn(char piece){
  if (bag.size()==0) {
    refillBag();
  }
  fp.respawn(piece);
}

void refillBag(){
  bag.add('i');
  bag.add('j');
  bag.add('l');
  bag.add('o');
  bag.add('t');
  bag.add('s');
  bag.add('z');
}

void addGrid() {
  for (int j = 1; j < 5; j++) {
    grid.setPoint(fp.getPos('x', j), fp.getPos('y', j), (char)((int)fp.whichPiece()-32));
  }
}

boolean canMove(String direction) {
  if (direction=="left") {
    for (int n=1; n<5; n++) {
      if (grid.getPoint(fp.getPos('x', n)-1, fp.getPos('y', n))<=90&&grid.getPoint(fp.getPos('x', n)-1, fp.getPos('y', n))>60) {
        return false;
      }
    }
  }
  if (direction=="right") {
    for (int n=1; n<5; n++) {
      if (grid.getPoint(fp.getPos('x', n)+1, fp.getPos('y', n))<=90&&grid.getPoint(fp.getPos('x', n)+1, fp.getPos('y', n))>60) {
        return false;
      }
    }
  }
  if (direction=="down") {
    for (int n=1; n<5; n++) {
      if (grid.getPoint(fp.getPos('x', n), fp.getPos('y', n)+1)<=90&&grid.getPoint(fp.getPos('x', n), fp.getPos('y', n)+1)>60) {
        return false;
      }
    }
  }
  return true;
}

void hold(){
  char held;
  if(hold.getPiece()==' '){
    for(int i=1; i<5; i++){
      grid.setPoint(fp.getPos('x',i), fp.getPos('y',i), ' ');
    }
    hold.setPiece(fp.whichPiece());

    respawn(false);
  }else{
    held=hold.getPiece();
    hold.setPiece(fp.whichPiece());
    for(int i=1; i<5; i++){
      grid.setPoint(fp.getPos('x',i), fp.getPos('y',i), ' ');
    }
    respawn(held);
  } 
}
