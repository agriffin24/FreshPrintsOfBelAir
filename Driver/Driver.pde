ArrayList<Passenger> passengers = new ArrayList<Passenger>();
ArrayList<Station> stations= new ArrayList<Station>();
ArrayList<Route> routes = new ArrayList<Route>();
ArrayList<Train> trees = new ArrayList<Train>();
float mode = 0; // 0 map mode, 1 = station mode

color white = color(255, 255, 255);

Station stationModeStation = null;


void setup() {
  background(50);
  size(1360, 732);

  textSize(40);

  //text("Welcome to the Train Simulation", 180, 60);
  createStations();

  createRoutes();

  trees.add(new Train(100, 200, stations.get(0)));
  trees.get(0).currStat = stations.get(0);

  createPassengers();



  //sop(millis());
  //sop(hour());
  //sop(second());
  //sop(day());
  //// trees.add(new Train(500,200));
}


void draw() {
  if (mode == 0) {
    background(50);
  } else if (mode == 1) {
    stationModeDraw();
    //createPassengers();
    for (Passenger p : passengers) {
      p.display();
    }
    if (mousePressed) {
      mode = 0;
    }
  }
  // sop(frameRate);
  for (Station w : stations) {
    if (mode == 0) {
      w.display();
    }
  }

  for (Route r : routes) {
    if (mode == 0) {
      r.display();
    }
  }

  for (Train t : trees) {
    t.move();
    if (mode == 0) {
      t.display();
    }
  }
}

void createTrainInStation() {
  fill (0, 255, 0);
  rect(100, 125, 200, 600);
}
void stationModeDraw() {
  background(0);

  if (stationModeStation.trainHere) {
    createTrainInStation();
  }
  stroke(white);
  strokeWeight(10);
  line(80, 0, 80, 1000);
  line(320, 0, 320, 1000);
}
void createPassengers() {
  for (int i = 0; i < 10; i++) {
    passengers.add(new Passenger(400, 175 + 55 * i, 40, 50)); //size and spacing of passengers
  }
}
void createStations() {
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

void mouseClicked() {
  for (int i = 0; i < stations.size(); i++) {
    if (mode == 0 && sq(mouseX - (stations.get(i).xcord)) + sq(mouseY - (stations.get(i).ycord)) < sq(stations.get(i).RADIUS)) {
      stationModeStation = stations.get(i);
      //if (stationModeStation.trainHere) {
      mode = 1;
      //}
      for (Passenger p : passengers) {
        p.makePassenger();
      }
    }
  }
}

//creates the distances between x and y between consecutive stations as well as what the next stations for each station is.
void createDirections() {
  for (int i = 0; i < stations.size() - 1; i++) {
    stations.get(i).setDists(stations.get(i+1)); //sets the distances to the next stations
  }

  stations.get(stations.size()-1).setDistsZero();
}

void createRoutes() {
  for (int i=0; i<stations.size()-1; i++) {
    float x1 = stations.get(i).xcord;
    float y1 = stations.get(i).ycord;
    float x2 = stations.get(i+1).xcord;
    float y2 = stations.get(i+1).ycord;
    routes.add(new Route(x1, y1, x2, y2));
  }
}
