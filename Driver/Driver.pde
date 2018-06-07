import java.util.*;


ArrayList<Passenger> passengers = new ArrayList<Passenger>();
ArrayList<Station> stations= new ArrayList<Station>();
ArrayList<Route> routes = new ArrayList<Route>();
ArrayList<Train> trees = new ArrayList<Train>();
float mode = 0; // 0 map mode, 1 = station mode

color white = color(255, 255, 255);

Station stationModeStation = null;


void setup() {
  background(50);
  size(1024, 768); //standar size

  textSize(40);

  //text("Welcome to the Train Simulation", 180, 60);
  createStations();
  createRoutes();


  Station firstStation = stations.get(0);
  trees.add(new Train(firstStation.xcord, firstStation.ycord, firstStation));
  trees.get(0).currStat = stations.get(0);

  createPassengersOnStations();


  //sop(millis());
  //sop(hour());
  //sop(second());
  //sop(day());
  //// trees.add(new Train(500,200));
}

void draw() {
  if (mode == 0) {  // Mode 0 is the "map mode"
    background(50);
  } else if (mode == 1) { //Mode 1 is the "station mode"
    stationModeDraw();
    //createPassengers();
<<<<<<< HEAD
  for (Passenger p : passengers) {
    p.checkMouse(); // While in station mode, continuously check if the mouse is present
  }
=======
    for (Passenger p : stationModeStation.passengers) {
      p.checkMouse();
    }
>>>>>>> 881e791972746f63525930a81f07549563d016cd
  }
  // sop(frameRate);
  for (Station w : stations) {
    if (mode == 0) {
      w.display(); //draw the stations
    }
  }

  for (Route r : routes) {
    if (mode == 0) {
      r.display(); //draw the routes
    }
  }

  for (Train t : trees) {
    t.move();
    if (mode == 0) {
      t.display(); //draw the trains
    }
  }
}

void createTrainInStation() { //when the train is in station, draw it
  fill(180, 190, 200);
  rect(90, 100, 220, 600);
}
void stationModeDraw() {
  background(40, 120, 220);

  if (stationModeStation.trainHere) { //if train here, create a train here
    createTrainInStation();
  }
  stroke(white);
  strokeWeight(10);
  line(80, 0, 80, 1000); //makes tracks
  line(320, 0, 320, 1000); //makes tracks

  createBackButton();

  displayTimer();

  /*for (Passenger p : passengers) {
   p.display();
   }*/
}

void displayTimer() { //timer for how long until the train leaves
  //textFont();
  textSize(30); 
  text("Train Leaves in: " + stationModeStation.timer() + " seconds. ", 600, 500);
}

<<<<<<< HEAD
void createBackButton() { //back button to return to the map
   fill(130,130,130);
   noStroke();
   rect(800,70,220,35);
   
   fill(0);
   textSize(30);
   text("Return to Map", 800,100);
}
void createPassengers() { //create passengers
  for (int i = 0; i < 10; i++) {
    passengers.add(new Passenger(400, 150 + 65 * i, 40, 40)); //size and spacing of passengers
=======
void createBackButton() {
  fill(130, 130, 130);
  noStroke();
  rect(800, 70, 220, 35);

  fill(0);
  textSize(30);
  text("Return to Map", 800, 100);
}
void createPassengersOnStations() {

  for (Station stat : stations) {
    stat.createPassengers();
>>>>>>> 881e791972746f63525930a81f07549563d016cd
  }
}
void createStations() { // points to be our station
  stations.add(new Station(100, 200));
  stations.add(new Station(200, 200));
  stations.add(new Station(300, 300));
  stations.add(new Station(400, 400));

  stations.add(new Station(500, 400));

  stations.add(new Station(600, 500));
  stations.add(new Station(700, 600));
  stations.add(new Station(800, 500));
  stations.add(new Station(900, 400));

  createDirections();
}

void sop(Object o) {
  System.out.println(o);
}

void mouseClicked() { //if clicked on station, open that station
  if (mode == 0) { //only select on stations in map mode
    for (int i = 0; i < stations.size(); i++) {
      if (sq(mouseX - (stations.get(i).xcord)) + sq(mouseY - (stations.get(i).ycord)) < sq(stations.get(i).RADIUS)) {
        stationModeStation = stations.get(i);
        //if (stationModeStation.trainHere) {
        mode = 1;
        //}
        //for (Passenger p : passengers) {
        //  p.makePassenger();
        //}
      }
    }
<<<<<<< HEAD
  }
  else if (mode == 1) { //when in station mode
    if (mouseInBackButton()) { //if click back, return to map
=======
  } else if (mode == 1) { //when in station mode
    if (mouseInBackButton()) {
>>>>>>> 881e791972746f63525930a81f07549563d016cd
      mode = 0;
    }
  }
}


<<<<<<< HEAD
void mousePressed() { //if mouse pressed, have the passenger locked onto the mouse
  for (Passenger p : passengers) {
  if (p.over) {
    p.locked = true;
    
  }
  else {
    p.locked = false;
  }
  p.difX = mouseX - p.xcor;
  p.difY = mouseY - p.ycor;
  }
}

void mouseDragged() { //if mouse moved around, have the locked passenger follow
  for (Passenger p : passengers) {
  if (p.locked) {
    p.xcor = mouseX - p.difX;
    p.ycor = mouseY - p.difY;
  }
  }
}

void mouseReleased() { //when released, let the passenger stay
  for (Passenger p : passengers) {
  p.locked = false;
  }
}

boolean mouseInBackButton() { //return whether mouse is on button
=======
void mousePressed() {

  if (mode == 1) { //if in station mode
    for (Passenger p : stationModeStation.passengers) {
      if (p.over) {
        p.locked = true;
      } else {
        p.locked = false;
      }
      p.difX = mouseX - p.xcor;
      p.difY = mouseY - p.ycor;
    }
  }
}

void mouseDragged() {
  if (mode == 1) { 
    for (Passenger p : stationModeStation.passengers) {
      if (p.locked) { //locked means dragging passenger

        if (stationModeStation.trainHere) { //if train on station 


          p.xcor = mouseX;
          p.ycor = mouseY;

          //if (mouseInStation()) {
          //  stationModeStation.currTrainOnStation.addPassenger(p);
          //}
        } else {
          if (mouseX > 345) { //cannot be dragged onto the station
            p.xcor = mouseX;
            p.ycor = mouseY;

            sop (mouseX + "and " + mouseY);
          }
        }
      }
    }
  }
}


boolean mouseInStation() {
  return (mouseX > 90 && mouseX < 320 && mouseY > 100 && mouseY < 700);
}

boolean onTrain(Passenger pass) {
  
  return (pass.xcor > 90 && pass.xcor < 320 && pass.ycor > 100 && pass.ycor < 700);
}

void mouseReleased() {
  if (mode == 1) {
    for (Passenger p : stationModeStation.passengers) {
      p.locked = false;
      
      if (onTrain(p)) {
        stationModeStation.passToBeRemoved.add(p); //add the ones on the train to be removed
      }
    }
    
    for (Passenger rem : stationModeStation.passToBeRemoved) {
      stationModeStation.passengers.remove(rem);
    }
  }
}



boolean mouseInBackButton() {
>>>>>>> 881e791972746f63525930a81f07549563d016cd
  if (mouseX > 800 && mouseX < 1020 && mouseY > 70 && mouseY < 105) {
    return true;
  }
  return false;
}

//creates the distances between x and y between consecutive stations as well as what the next stations for each station is.
void createDirections() {
  for (int i = 0; i < stations.size() - 1; i++) {
    stations.get(i).setDists(stations.get(i+1)); //sets the distances to the next stations
  }

  stations.get(stations.size()-1).setDistsZero();
}

void createRoutes() { //create a line from each station to the next
  for (int i = 0; i < stations.size() - 1; i++) {
    float x1 = stations.get(i).xcord;
    float y1 = stations.get(i).ycord;
    float x2 = stations.get(i+1).xcord;
    float y2 = stations.get(i+1).ycord;
    routes.add(new Route(x1, y1, x2, y2));
  }
}
