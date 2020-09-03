import UIKit

var str = "Hello, playground"
 
// Dictionaries
// Declaring a new Dictionary
var carDB = Dictionary<String, String>()
// Dictionary <datatype of the key, datatype of the value>()
var carDB2 = [String:String]()

// Adding key value pairs
carDB["JSD 238"] = "Blue Ferrari"
carDB["SID 482"] = "Green Lamborghini"

// Retrieving data from dictionary
print(carDB["JSD 238"])
print(carDB["ASD 238"])
// Optional if the key isnt found, it will return nil


// Updating value for a key
carDB["JSD 238"] = "Red Ferrari"

// Remove a key-value pair
carDB["JSD 238"] = nil

//Iterate over it
for (license, car) in carDB{
    print("\(car) has a license: \(license)")
}
// (license, car) is called a tuple, it will grab each key value, the key will be stored in license and the value will be stored in car.

