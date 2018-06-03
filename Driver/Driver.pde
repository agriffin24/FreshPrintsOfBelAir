
ArrayList<Station> stations= new ArrayList<Station>();
ArrayList<Route> routes = new ArrayList<Route>();

void setup() {
  background(50);
  size(1000, 1000);

  textSize(40);

  //text("Welcome to the Train Simulation", 180, 60);
  createStations();

  createRoutes();
}


void draw() {
  for (Station w : stations) {
    w.display();
  }
  for (Route r : routes) {
    r.display();
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
