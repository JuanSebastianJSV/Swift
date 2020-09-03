import UIKit

var str = "Hello, playground"
// 1. Function
// Function is a block of code with a given name that can be executed on demand by calling that name.

//basic function synthax

// func name(){
// SOME COOOOOOODE
//}
// Function with no parameter
func addTwoNumbers(){
    let a = 1
    let b = 2
    let c = a+b
    print(c)
}
// the function itself

addTwoNumbers()
// call function

//2. Function with Data Type
func substractTwoNumbers() -> Int{
    let d = 3
    let e = 1
    let f = d-e
    
    return f
    
}

substractTwoNumbers()
print(substractTwoNumbers())

//3. Function With Parameters
func multiplyTwoNumbers(arg mult:Int) -> Int{
    let x = mult
    let y = 10
    
    return x * y
}

// Call Function with Parameter
let u = multiplyTwoNumbers(arg:4)
print(u)

//4. Function with Two Parameters
func divideTwoNumbers(arg num1:Int, arg num2:Int) -> Int{
    let a = num1
    let b = num2
    
    return a/b
}

// Call Function with Two Parameters

let c = divideTwoNumbers(arg:60, arg:5)
//let d = divideTwoNumbers(30,6) , error (must use arg)
print(c)
//print(d)
