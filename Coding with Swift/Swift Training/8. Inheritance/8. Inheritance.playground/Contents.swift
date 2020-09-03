import UIKit

var str = "Hello, playground"

class Car{
    var topSpeed = 200
    
    func drive(){
        print("driving at \(topSpeed)")
    }
}
// Inheritance
class FutureCar : Car{
    // Overriding
    override func drive(){
        super.drive()
        // Super refers to superclass
        print("Boosting at \(topSpeed+50)")
    }
    func fly(){
        print("Flying")
    }
}
// FutureCar is the subclass and Car is the superclass
let myRide = Car()
myRide.topSpeed
myRide.drive()


let myNewRide = FutureCar()
myNewRide.topSpeed
myNewRide.drive()
myNewRide.fly()
