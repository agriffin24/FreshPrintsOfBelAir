
ArrayList<Station> stations= new ArrayList<Station>();
ArrayList<Route> routes = new ArrayList<Route>();
ArrayList<Train> trees = new ArrayList<Train>();
;

void setup() {
  background(50);
  size(1000, 1000);

  textSize(40);

  //text("Welcome to the Train Simulation", 180, 60);
  createStations();

  createRoutes();
  
  trees.add(new Train(100, 200, stations.get(0)));
  // trees.add(new Train(500,200));
}


void draw() {
  //background(50);
  
  for (Station w : stations) {
    w.display();
  }
  for (Route r : routes) {
    r.display();
  }

  for (Train t : trees) {
    t.move();
    t.display();

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


//creates the distances between x and y between consecutive stations as well as what the next stations for each station is.
void createDirections() {
  for (int i = 0; i < stations.size() - 1; i++) {
    stations.get(i).setDists(stations.get(i+1)); //sets the distances to the next stations
  }
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
