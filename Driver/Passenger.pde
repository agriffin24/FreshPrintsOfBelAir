class Passenger{
  float xcor, ycor;
  float minor, major;
  int age;
  int rcolor, bcolor, gcolor;
  color myColor;
  public Passenger(float x, float y, float w, float l){
    xcor = x;
    ycor = y;
    minor = w;
    major = l;
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
  
  void display() {
    fill(myColor);
    strokeWeight(3);
    stroke(255,255,255);
    ellipse(xcor, ycor, minor, major);
  }
    
    
  
}
