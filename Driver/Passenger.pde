class Passenger {
  float xcor, ycor;
  float s; //size
  float difX = 0.0;
  float difY = 0.0;
  int rcolor, gcolor, bcolor;
  boolean over = false;
  boolean locked = false;
  color myColor;
  float PASSRADIUS = 20;

  Station myStation;


  public Passenger(float x, float y, float w, float l) {
    xcor = x;
    ycor = y;
    s = w;
    s = l;
    //assigns each passenger to a random color
    rcolor = (int) (random(256));
    bcolor = (int) (random(256));
    gcolor = (int) (random(256));
    myColor = color(rcolor, bcolor, gcolor);

  /*
  void display() {
   fill(myColor);
   strokeWeight(2);
   stroke(255,255,255);
   ellipse(xcor, ycor, s, s);
   }*/

  color white = color(255);
  }
  void checkMouse() { //checks if mouse on passenger and

    strokeWeight(2);

    if (sq(mouseX - xcor) + sq(mouseY - ycor) < sq(PASSRADIUS)) { //if mouse in the area of the circle

      over = true;

      if (!locked) { //if hovering, then change outline to white
        stroke(white);
        fill(153); //grayy
      }
    } else {
      stroke(153); //else, leave it
      fill(myColor);
      over = false;
    }
    ellipse( xcor, ycor, s, s);
  }

}
