class Passenger{
  float xcor, ycor;
  float minor, major;
  int age;
  int rcolor, bcolor, gcolor;
  public Passenger(float x, float y, float w, float l){
    xcor = x;
    ycor = y;
    minor = w;
    major = l;
  }
  void makePassenger(){
    ellipse(xcor, ycor, minor, major);
    rcolor = (int) (random(256));
    bcolor = (int) (random(256));
    gcolor = (int) (random(256));
    fill(color(rcolor, bcolor, gcolor));
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
  
}
