class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  float distX; //distance in x to next station
  float distY; //distance in y to next station
 
  Station nextStat; //next station
  
  
  final float RADIUS = 20;
  final float DIAMETER = 40; //station's diameter
  final color defColor = color(255, 0, 255); //default color which is magenta
  final color trainHereColor = color(250,250,0);
  
  public boolean trainHere;
  color currColor = defColor;

  
  
  public Station(float xcor, float ycor) {

    xcord = xcor;
    ycord = ycor;
  }

  void setDists(Station star) {
    
    nextStat = star;
    distX = star.xcord - xcord;
    distY = star.ycord - ycord;
  }
  
  void setDistsZero() {
    nextStat = this;
    distX = 0;
    distX = 0;
    distY = 0;
  }
  
  
  Station getNext() {
    return nextStat;
  }
  

  void display() {
    //
    //System.out.println(currColor);
    fill(currColor);
    ellipse(xcord, ycord, DIAMETER, DIAMETER);
  }
  
  void trainHere() {
    currColor = trainHereColor;
    trainHere = true;
    
  }
  
  void trainLeaves() {
    currColor = defColor;
    trainHere = false;
  }

}
