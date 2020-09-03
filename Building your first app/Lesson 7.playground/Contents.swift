import UIKit


class Spaceship{
    
    var fuelLevel = 100
    var name:String = ""
    
    func cruise(){
        // Code to initiate cruising
        print("Cruising is initiated for \(name)")
    }

    func thrust(){
        // Code to initiate rocket thrusters
        print("Rocket thrusters initiated for \(name)")
    }

}

var myShip:Spaceship = Spaceship() // myShip is a reference of Spaceship object
myShip.name = "Bombushka" // . is for accessing the methods and properties inside Spaceship class
myShip.cruise()
myShip.thrust()
print(myShip.fuelLevel)




