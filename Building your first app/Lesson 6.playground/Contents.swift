import UIKit

var str = "Hello, playground"

// Basic Function
func sayHello(){
    print("Hello!")
}

sayHello()

// Function with Parameters
func sayHelloTo(name:String ,age:Int) -> Void{
    print("Hello \(name), you are \(age) years old.")
}
sayHelloTo(name:"Tom",age:18)

func sayGoodbyeTo(_ name:String, _ age:Int)->Void{
    print("Goodbye \(name), you are \(age) years old.")
}
sayGoodbyeTo("Tom",18)

// Function with Return Value
func addFourTo(x:Int)->Int{
    let sum = x+4
    
    return sum
}

var result = addFourTo(x: 10)
print(result)


