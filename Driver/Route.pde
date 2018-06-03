class Route {
  float x1cor, y1cor, x2cor,y2cor;
  
  
  public Route(float x1,float y1,float x2,float y2) {
    x1cor = x1;
    y1cor = y1;
    x2cor = x2;
    y2cor = y2;
  }
  
  void display() {
    fill(255,255,255);
    strokeWeight(10);
    line(x1cor,y1cor,x2cor,y2cor);
  }
}
