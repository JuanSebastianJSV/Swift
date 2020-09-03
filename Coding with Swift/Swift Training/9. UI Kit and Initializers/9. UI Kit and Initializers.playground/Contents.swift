import UIKit
// Initializrs
var str = "Hello, playground"

class Person{
    
    var name = ""
    var age = 0
    
    init(){
        
    }
    
    init(_ name:String, _ age:Int){
        // initializer function
        // set up your object
        self.name = name
        self.age = age
    }
}
var a = Person("Juan",20)
var b = Person()
b.name
b.age
// Person object, you are calling the initializer function
