class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  float distX; //distance in x to next station
  float distY; //distance in y to next station

  Station nextStat;

  final float DIAMETER = 15; //station's diameter
  final color defColor = color(255, 0, 255); //default color which is magenta

  public Station(float xcor, float ycor) {

    xcord = xcor;
    ycord = ycor;
  }

  void setDists(Station star) {
    
    nextStat = star;
    distX = star.xcord - xcord;
    distY = star.ycord - ycord;
  }
  
  Station getNext() {
    return nextStat;
  }



  void display() {
    fill(defColor);
    ellipse(xcord, ycord, DIAMETER, DIAMETER);
  }
}
