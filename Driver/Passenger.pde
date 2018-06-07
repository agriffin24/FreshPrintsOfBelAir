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
//<<<<<<< HEAD
//  }
 
//  void makePassenger(){ //asign each passenger a random color
//=======
    
    
//>>>>>>> 881e791972746f63525930a81f07549563d016cd
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


  //
  
//<<<<<<< HEAD
//  void checkMouse() { //check if mouse is present on passenger
//=======
  color white = color(255);
  void checkMouse() { //checks if mouse on passenger and 
//>>>>>>> 881e791972746f63525930a81f07549563d016cd
    strokeWeight(2);

//<<<<<<< HEAD
//    over = true;
    
//    if(!locked) { //when clicked/locked, change the color
//      stroke(255); 
//      fill(153);
//    }
//  } else {
//    stroke(153);
//    fill(myColor); //else, keep your color
//    over = false;
//  }
//  ellipse( xcor, ycor, s, s);
//  }
  
//  void mousePressed() { //while pressed, follow the mouse
//  if (over) {
//    locked = true;
//    myColor = color(255,255,255);
//  }
//  else {
//    locked = false;
//  }
//  difX = mouseX - xcor;
//  difY = mouseY - ycor;
//  }
  
//  void mouseDragged() { //when dragged, have the coordinates change with the mouse's
//  if (locked) {
//    xcor = mouseX - difX;
//    ycor = mouseY - difY;
//  }
//  }

//  void mouseReleased() { //when release, let the passenger go
//    locked = false;
//  }
//=======

    if (sq(mouseX - xcor) + sq(mouseY - ycor) < sq(PASSRADIUS)) { //if mouse in the area of the circle

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
