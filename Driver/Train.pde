


class Train {

  //float backX = 0;
  //float backY = 0;

  Station currStat;
  Station nextStat;

  float xdir;
  float ydir;

  float rotVal = 0;


  float speed; //since 

  //PShape train, front, back, wheel1, wheel2, wheel3;

  float xcord, ycord;
  float trWid = 42; //train width
  float trLen = 15; //train length






  public Train(float xcor, float ycor, Station star) {

    xcord = xcor;
    ycord = ycor;



    setCurrAndNext(star);


    setDirs();



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

  void setCurrAndNext(Station stuff) {
    currStat = stuff;
    nextStat = stuff.getNext();
  }

  void setDirs() {
    xdir = currStat.distX / 100;
    ydir = currStat.distY / 100;
  }


  boolean AtNextStation() {
    if (xcord == nextStat.xcord) { // only need to check for on x
      return true;
    }
    return false;
  }

  void setAngle() {
    float xdif = nextStat.xcord - xcord;
    float ydif = nextStat.ycord - ycord;

    System.out.println(xdif + "and" + ydif);

    rotVal = atan(ydif/xdif);
  }




  void move() {
    if (AtNextStation()) {
      setCurrAndNext(nextStat);
      setDirs();
      setAngle();
    }

    xcord += xdir;
    ycord += ydir;
  }

  void display() {
    fill(0, 0, 255);
    noStroke();
    //rotate( -1 * (atan(

    rect(xcord, ycord, trWid, trLen);
    rotate(rotVal);
  }
}
