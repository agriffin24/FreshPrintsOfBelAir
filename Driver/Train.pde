import java.util.*;

class Train {

  //float backX = 0;
  //float backY = 0;

  Station currStat;
  Station nextStat;

  float xdir;
  float ydir;

  float rotVal = 0;

  float speed = 0.3; //since

  float timer;

  final float timeOnStation = 7000;

  //PShape train, front, back, wheel1, wheel2, wheel3;

  float xcord, ycord;
  float trWid = 21; //train width
  float trLen = 8; //train length

  boolean isTimerOn;

  int passengerCount = 0;

  boolean reachedLastStation;

  int passengersOff;



  Stack<Passenger> trainPassengers = new Stack<Passenger>();

  public Train(float xcor, float ycor, Station star) {

    xcord = xcor;
    ycord = ycor;

    reachedLastStation = false;
    passengersOff = 0;



    setCurrAndNext(star);

    setDirs();

    isTimerOn = false;

    //comment out here
    //commented out because pshapes are annoying
    //train = createShape(GROUP);


    //fill(50, 50, 100);
    //back = createShape(RECT, 0, 0, 100, 40, 5);


    ////front = createShape(RECT, 85, 75, 70,25);
    ////front.setFill(color(200,100,30));

    //color wheel = color(0);
    //wheel1 = createShape(ELLIPSE, 20, 45, 20, 20); //plus 20, plus 45
    //wheel1.setFill(wheel);

    //fill(wheel);

    ////wheel2 = createShape(ELLIPSE, 45, 45, 20, 20); //plus 45, plus 45;

    //wheel3 = createShape(ELLIPSE, 70, 45, 20, 20); //plus 70, plus 45;

    //train.addChild(back);
    //train.addChild(wheel1);
    ////train.addChild(wheel2);
    //train.addChild(wheel3);
  }

  void setCurrAndNext(Station stuff) { //set its next destination
    currStat = stuff;
    nextStat = stuff.getNext();
  }

  void setDirs() { //set its directions towards next station
    xdir = speed * currStat.distX / sqrt(sq(currStat.distX) + sq(currStat.distY));
    ydir = speed * currStat.distY / sqrt(sq(currStat.distX) + sq(currStat.distY));
  }



  boolean AtNextStation() {

    if (nextStat.xcord - 1 < xcord && xcord < nextStat.xcord + 1 && nextStat.ycord - 1 < ycord && ycord < nextStat.ycord + 1) { // only need to check for on x
          System.out.println("attt next station");

      return true;
    }
    return false;
  }

  void setAngle() {
    float xdif = nextStat.xcord - xcord;
    float ydif = nextStat.ycord - ycord;

    rotVal = atan(ydif/xdif);
  }

  void startTimer() {
    isTimerOn = true;
    timer = millis();

    currStat.isTimerOn = true;
    currStat.startTime = millis();
  }

  void removePassengers() {
    int randNum = (int) random(0, passengerCount/2);

    for (int i = 0; i <randNum; i++) {
      trainPassengers.pop();
      passengerCount -= 1;
    }

    passengersOff = randNum;
  }

  /*
If Train arrives at the nextStation, then set it's current station to the newly arrived station, and set it's next station to the following station. The new current station changes its color to yellow
   for as long as the timer is active.
   */
  void move() {

    if (reachedLastStation == false) {
      if (AtNextStation()) {  //runs only once

        setCurrAndNext(nextStat);
        currStat.setTrainHere();
        currStat.currTrainOnStation = this;

        if (currStat.isLastStation) {
          reachedLastStation = true;
        } else {
          setDirs();
          setAngle();
          startTimer();
          removePassengers();
        }
      }

      if (isTimerOn) {
        //System.out.println("timer: " + timer + "millis: " + millis());

        if (millis() - timer >= timeOnStation) {
          isTimerOn = false;

          currStat.trainLeaves();
        }
      } else {
        xcord += xdir;
        ycord += ydir;
      }
    }
    else {
      removeAllPassengers();
    }
  }
  
  void removeAllPassengers() {
    for (int i = 0; i < passengerCount; i++) {
      trainPassengers.pop();
    }
    passengerCount = 0;
  }

  void addPassenger(Passenger pers) {
    trainPassengers.push(pers);
    passengerCount +=1;
  }

  void display() {
    fill(0, 0, 255);
    noStroke();
    //rotate( -1 * (atan(

    //shape(train, xcord, ycord, trWid, trLen);
    rect(xcord, ycord, trWid, trLen);
  }
}
