<<<<<<< HEAD
class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  float distX; //distance in x to next station
  float distY; //distance in y to next station
  int timer;
  boolean isTimerOn = false;
  Station nextStat; //next station
  final float RADIUS = 20;
  final float DIAMETER = 40; //station's diameter
  final color defColor = color(255, 0, 255); //default color which is magenta
  final color trainHereColor = color(250,250,0);
  
  public boolean trainHere;
  Train currTrainOnStation;
  color currColor = defColor;

  
  
  public Station(float xcor, float ycor) {

    xcord = xcor;
    ycord = ycor;
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
    //
    //System.out.println(currColor);
    fill(currColor);
    ellipse(xcord, ycord, DIAMETER, DIAMETER);
  }
  
  void setTrainHere() { //sets color to train here color
    currColor = trainHereColor;
    trainHere = true;
    
  }
  
  void trainLeaves() { //if train leaves
    currColor = defColor;
    trainHere = false;
  }
  void startTimer() { //timer
    timer = second();
    isTimerOn = true; //create a timer
  }
  int timer(){
    if (!trainHere){ 
      startTimer();
    }
    if (isTimerOn){
      System.out.println("timer: " + timer + "second(): " + second());
      return (timer - second() + 5); //return time from 5 to 0
    }
    return 0;
  }
}
=======
class Station {

  float xcord; //station's x-coordinate
  float ycord; //station's y-coordinate

  float distX; //distance in x to next station
  float distY; //distance in y to next station
  int timer;
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
    //
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
    currTrainOnStation = null;
  }
  void startTimer() {
    timer = second();
    isTimerOn = true;
  }
  
  
  int timer(){
    if (!trainHere){
      startTimer();
    }
    if (isTimerOn){
      //System.out.println("timer: " + timer + "second(): " + second());
      return (timer - second() + 5);
    }
    return 0;
  }
  
  
  void createPassengers() {
  for (int i = 0; i < 10; i++) {
    passengers.add(new Passenger(400, 150 + 65 * i, 40, 40)); //size and spacing of passengers
  }
}
}
>>>>>>> 881e791972746f63525930a81f07549563d016cd
