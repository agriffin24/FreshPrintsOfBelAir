class Train {

  //float backX = 0;
  //float backY = 0;

  Station currStat;
  Station nextStat;

  float xdir;
  float ydir;

  float rotVal = 0;

  float speed = 0.5; //since 

  float timer; 

  //PShape train, front, back, wheel1, wheel2, wheel3;

  float xcord, ycord;
  float trWid = 21; //train width
  float trLen = 8; //train length

  boolean isTimerOn;


  public Train(float xcor, float ycor, Station star) {

    xcord = xcor;
    ycord = ycor;

    setCurrAndNext(star);

    setDirs();

    isTimerOn = false;

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

  void setCurrAndNext(Station stuff) { //assign stop
    currStat = stuff;
    nextStat = stuff.getNext();
  }

  void setDirs() { //set direction
    xdir = speed * currStat.distX / sqrt(sq(currStat.distX) + sqrt(sq(currStat.distY)));
    ydir = speed * currStat.distY / sqrt(sq(currStat.distX) + sqrt(sq(currStat.distY)));
  }

  boolean AtNextStation() { //is the train here
    if (nextStat.xcord - 0.05 < xcord && xcord < nextStat.xcord + 0.05) { // only need to check for on x
      return true;
    }
    return false;
  }

  void setAngle() { //set the angle
    float xdif = nextStat.xcord - xcord;
    float ydif = nextStat.ycord - ycord;

    rotVal = atan(ydif/xdif);
  }

  void startTimer() { //start timer
    isTimerOn = true;
    timer = millis();
  }


/*
If Train arrives at the nextStation, then set it's current station to the newly arrived station, and set it's next station to the following station. The new current station changes its color to yellow
for as long as the timer is active.
*/
  void move() { //from current coordinate
    if (AtNextStation()) {
      setCurrAndNext(nextStat);
      currStat.setTrainHere();
      currStat.currTrainOnStation = this;
      setDirs();
      setAngle();
      startTimer(); //move to coordinates of the next station
    }

    if (isTimerOn) {
      if (millis() - timer >= 5000) {
        isTimerOn = false;
        currStat.trainLeaves();
      }
    } else {
      xcord += xdir;
      ycord += ydir;
    }
  }


  void display() { //draw the train
    fill(0, 0, 255);
    noStroke();
    //rotate( -1 * (atan(

    rect(xcord, ycord, trWid, trLen);
  }
}
