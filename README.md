# FreshPrintsOfBelAir

![Alt logo] (img/FreshPrince.jpg "Logo")

## Members: Aidan Griffin, Mohtasim Howlader, Jackie Li
### Final Project Proposal: Trains!

For our final project we want to develop a functional train fully equipped with real life properties. This train can follow a 
route, dock and leave station, and transfer customers from station to station. Our end goal is to have a train/line that 
one can manage, use, and follow. 

Our project first displays a series of stations to the viewer. This will 
suffice as the route the train will take on, and the train will begin to travel
along the route. Upon reaching a new station, the user will see a platform of
people, and will have a small timeframe to move each passenger to the train.
The goal of the whole simulation is to have the most passengers possible when
the train reaches the end of the route.

### Launch Instructions
1. Run the Driver file.
2. Choose/Analyza the route that you take.
3. When you reach a station, drag passengers onto the train cars.
4. If the car has reached its capacity, push the passengers to the rest of the
cars. If the train is full. then you have failed the game.

### Steps
1. Create a series of stations and and routes, ones that our trains can use.
2. We create a passenger class, one that can use and exit a train
3. We create the basic train class, which compasses a newRoute() and a getRoute() method, with a depart() and dock() method.
4. Add to the train class, with the add() method (adding passengers), along with open(), delay(), and revert() method.
5. Implement this into a visual process, likely using processing.

?. Have milk and cookies.

### UML Diagrams

 **Class Train**

| Properties |   Methods   |
| ---------- | ----------: |
|   Cars     |	 train()   |
| Passengers |	getRoute() |
|   Color    | newRoute()  |
|   Seats    |   start()   |
|   Route    |	setColor() |
|   Doors    |	 delay()   |
|   Times    |	  dock()   |
|   Seats    |    open()   |
|nextStations|     add()   |
|prevStations|	 depart()  |
|    Cost    |	 revert()  |

 **Passenger**

|   Properties  |     Methods    |
| ------------- | -------------: |
|  Age		|  isStanding()  |
|  Gender	|   isSitting()  |
|  isPregnant	|     onTrain()  |
|  isDisabled	|  onPlatform()  |
|  Entitlement	| entitlement()  |
|  Patience	|       board()	 |
|  boilingPoint	|        exit()  |


