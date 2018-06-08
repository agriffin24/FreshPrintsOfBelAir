class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  float distX; //distance in x to next station
  float distY; //distance in y to next station
  int timer;
  int startTime;

  int delayTime = 7000;
  boolean isTimerOn = false;
  Station nextStat; //next station
  final float RADIUS = 20;
  final float DIAMETER = 40; //station's diameter
  final color defColor = color(255, 0, 255); //default color which is magenta
  final color trainHereColor = color(250,250,0);

  
  public boolean trainHere; //is train on the station
  Train currTrainOnStation; //the train currently on the station
  color currColor = defColor;

  ArrayList<Passenger> passengers = new ArrayList<Passenger>();

  ArrayList<Passenger> passToBeRemoved = new ArrayList<Passenger>();

  boolean isLastStation = false;




  public Station(float xcor, float ycor) {

    xcord = xcor;
    ycord = ycor;
    trainHere = false;
  }

  void setDists(Station star) { //sets distances to next train

    nextStat = star;
    distX = star.xcord - xcord;
    distY = star.ycord - ycord;
  }

  void setDistsZero() { //sets its distances to the next train to 0
    nextStat = this;
    distX = 0;
    distX = 0;
    distY = 0;
  }


  Station getNext() {
    return nextStat;
  }


  void display() {
    //System.out.println(currColor);
    fill(currColor);
    ellipse(xcord, ycord, DIAMETER, DIAMETER);
  }

  void setTrainHere() { //sets color to train here color
    currColor = trainHereColor;
    trainHere = true;


  }

  //simulates what happens when train leaves, its current color goes back to default color, and trainhere becomes false
  void trainLeaves() {
    currColor = defColor;
    trainHere = false;
    isTimerOn = false;
    currTrainOnStation = null;
  }
  void startTimer() {
    timer = millis();
    isTimerOn = true;
  }


  int timer(){
    //if (trainHere){
    //  startTimer();
    //}

    return (delayTime - (millis() - startTime));


    //if (
    //return (int) (millis() - startTime / 1000);

  }

  void createPassengers() {
    for (int i = 0; i < 10; i++) {
      passengers.add(new Passenger(400, 150 + 65 * i, 40, 40)); //size and spacing of passengers
     }
  }
}
