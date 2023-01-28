class Border extends Sprite{
  float x;
  float y;
  float longth;
  boolean line;
  boolean vertical;
  Border(float _x, float _y) {
    x=_x;
    y=_y;
    line=false;
  }
  Border(float _x, float _y, boolean _vertical, float _longth) {
    x=_x;
    y=_y;
    line=true;
    vertical=_vertical;
    longth=_longth;
  }
  void display() {
    ifline();
  }
  void ifline() {
    if (line) {
      if (vertical) {
        for (float i=-longth/2; i<longth/2; i+=35) {
          block(x, y+i, color(175,175,175));
        }
      } else {
        for (float i=-longth/2; i<longth/2; i+=35) {
          block(x+i, y,color(175,175,175));
        }
      }
    } else {
      block(x, y,color(175,175,175));
    }
  }
}
