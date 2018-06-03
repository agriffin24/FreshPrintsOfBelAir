class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  final float DIAMETER = 15; //station's diameter
  final color defColor = color(255, 0, 255); //default color which is magenta

  public Station(float xcor, float ycor) {
    
    xcord = xcor;
    ycord = ycor;    
    
    
  }
  
  void display() {
    fill(defColor);
    ellipse(xcord,ycord, DIAMETER, DIAMETER);
  }
}
