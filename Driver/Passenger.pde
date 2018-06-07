class Passenger{
  float xcor, ycor;
  float s;
  float difX = 0.0;
  float difY = 0.0;
  int age;
  boolean over = false;
  boolean locked = false;
  int rcolor, bcolor, gcolor;
  color myColor;
  public Passenger(float x, float y, float w, float l){
    xcor = x;
    ycor = y;
    s = w;
    s = l;
  }
 
  void makePassenger(){
    rcolor = (int) (random(256));
    bcolor = (int) (random(256));
    gcolor = (int) (random(256));
    myColor = color(rcolor, bcolor, gcolor);
    if (max(rcolor, bcolor, gcolor) == rcolor){
      age = 65 + (int) (random(20));
    }
    else if (max(rcolor, bcolor, gcolor) == bcolor){
      age = 45 + (int) (random(20));
    }
    else{
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
  
  void checkMouse() {
    strokeWeight(2);
    if (mouseX > xcor-s && mouseX < xcor+s && 
      mouseY > ycor-s && mouseY < ycor+s) {

    over = true;
    
    if(!locked) { 
      stroke(255); 
      fill(153);
    }
  } else {
    stroke(153);
    fill(myColor);
    over = false;
  }
  ellipse( xcor, ycor, s, s);
  }
  
  void mousePressed() {
  if (over) {
    locked = true;
    myColor = color(255,255,255);
  }
  else {
    locked = false;
  }
  difX = mouseX - xcor;
  difY = mouseY - ycor;
  }
  
  void mouseDragged() {
  if (locked) {
    xcor = mouseX - difX;
    ycor = mouseY - difY;
  }
  }

  void mouseReleased() {
    locked = false;
  }
}
