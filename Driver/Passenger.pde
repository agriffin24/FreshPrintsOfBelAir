class Passenger {
  float xcor, ycor;
  float s; //size
  float difX = 0.0;
  float difY = 0.0;
  int age;
  boolean over = false;
  boolean locked = false;
  int rcolor, bcolor, gcolor;
  color myColor;
  float PASSRADIUS = 20;

  Station myStation;


  public Passenger(float x, float y, float w, float l) {
    xcor = x;
    ycor = y;
    s = w;
    s = l;

    rcolor = (int) (random(256));
    bcolor = (int) (random(256));
    gcolor = (int) (random(256));
    myColor = color(rcolor, bcolor, gcolor);
    if (max(rcolor, bcolor, gcolor) == rcolor) {
      age = 65 + (int) (random(20));
    } else if (max(rcolor, bcolor, gcolor) == bcolor) {
      age = 45 + (int) (random(20));
    } else {
      age = 25 + (int) (random(20));
    }
  }

  /*
  void display() {
   fill(myColor);
   strokeWeight(2);
   stroke(255,255,255);
   ellipse(xcor, ycor, s, s);
   }*/



  color white = color(255);
  void checkMouse() { //checks if mouse on passenger and 

    strokeWeight(2);


    if (sq(mouseX - xcor) + sq(mouseY - ycor) < sq(PASSRADIUS)) {  //

      over = true;

      if (!locked) { 
        stroke(white); 
        fill(153); //grayy
      }
    } else {
      stroke(153);
      fill(myColor);
      over = false;
    }
    ellipse( xcor, ycor, s, s);
  }

  //>>>>>>> 881e791972746f63525930a81f07549563d016cd
}
