


class Train {

  //float backX = 0;
  //float backY = 0;


  //PShape train, front, back, wheel1, wheel2, wheel3;

  float xcord, ycord;
  float trWid = 42;
  float trLen = 15;


  public Train(float xcor, float ycor) {

    xcord = xcor;
    ycord = ycor;

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

  void display() {

    
     fill(0,0,255);
     noStroke();
     rect(xcord,ycord,trWid, trLen);
  }
}
