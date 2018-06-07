# FreshPrintsOfBelAir

![alt text][logo]

[logo]: https://github.com/agriffin24/FreshPrintsOfBelAir/blob/master/img/FreshPrince.jpg

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
1. Git clone our repo with either SSH or HTTP.
2. From the terminal, in the command prompt, type `cd Driver/` to access our driver file.
3. In the command prompt, type `processing Driver.pde`.
4. Run the Driver tab.

## Functionality
### Data Structures
`ArrayList` - To store our trains, passengers, stations 

### Data Types
* `float` - Traditionally used in processing
* `boolean` - Traditional Java `true` and `false`
* `int` - Integers

### Driver Class
Once booted up, the driver class will begin to create *stations, passengers, and a route.* Every class has a `display()` method, which displays the respective class. This will then draw out a train that will move along the route, stopping at magenta circles representing stations. Whenever the viewer likes, he or she may click on a station to view it, going into station mode. When in station mode, the user can click and drag the passengers around the station, adn when the train has entered the station, they can drag them onto the train.

### Trains
The train class has types `Station`, which keeps track of their `currStat` and `nextStat`, so that they can move along the train tracks. Trains also have `float` xdir and ydir, which stored their direction. Whenever a train is given their next station, they extrapolate the coordinates of that station, and moves their xdir and ydir towards those coordinates. This is the `move()` function. Helper functions for this include `setAngle()`, `setDirs()`, and `setCurrandNext()`.

### Stations
Every station has an `xcor` and `yxor`, keeping track of where they are on the grid. They keep track of the distance to the next station, with `float` `distX` and `distY`. A station can return its next station with `getNext()`, returning a type `Station`. Each station comes with a `timer()`, which will count down and display a counter when the train has arrived at the station.

### Passengers
Every passenger knows the station they are at, and keeps track of their own x and y coordinates. Every passenger has their own individual color, as well as coordinates. When the user enters station mode, the function `checkMouse()` will continuously check to see if the mouse is present over the passenger. This is kept tracked of with the boolean `over`. The boolean `locked` will check if the passenger is locked to mouse, causing it to follow the mouse's movement. Passengers cannot enter the track without a station present.


### Steps (For Us)
1. Create a series of stations and and routes, ones that our trains can use.
2. We create a passenger class, one that can use and exit a train
3. We create the basic train class, which compasses a newRoute() and a getRoute() method, with a depart() and dock() method.
4. Add to the train class, with the add() method (adding passengers), along with open(), delay(), and revert() method.
5. Implement this into a visual process, likely using processing.

?. Have milk and cookies.
