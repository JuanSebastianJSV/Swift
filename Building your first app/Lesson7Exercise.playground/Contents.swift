import UIKit

class Spaceship{
    var fuelLevel:Int = 50
    func liftOff(){
        fuelLevel = fuelLevel-50
        print("We have lift off!")
        print("Current Fuel Level at: \(fuelLevel)")
    }
    
    func addFuel(fuel:Int){
        fuelLevel = fuelLevel+fuel
        print("Fuel Added!")
        print("Current Fuel Level at: \(fuelLevel)")
    }
    
    func thrust(){
        fuelLevel = fuelLevel-15
        print("Rocket is thrusting")
        print("Current Fuel Level at: \(fuelLevel)")
    }
    
    func cruise(){
        fuelLevel = fuelLevel-5
        print("Rocket is cruising")
        print("Current Fuel Level at: \(fuelLevel)")
    }
}
var newSpaceship:Spaceship = Spaceship()
newSpaceship.addFuel(fuel: 50)
newSpaceship.liftOff()
newSpaceship.thrust()
newSpaceship.cruise()


