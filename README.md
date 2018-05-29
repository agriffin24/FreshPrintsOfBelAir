# FreshPrintsOfBelAir
Final Project Repo

## Members: Aidan Griffin, Mohtasim Howlader, Jackie Li
### Final Project Proposal: Trains!

For our final project we want to develop a functional train fully equipped with real life properties. This train can follow a 
route, dock and leave station, and transfer customers from station to station. Our end goal is to have a train/line that 
one can manage, use, and follow.

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


