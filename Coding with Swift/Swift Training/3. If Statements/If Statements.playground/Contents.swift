import UIKit

var str = "Hello, playground"

let a  = 10
let b  = 12
let c  = 2
if a < 4  && b > 8{
print("Only if a is less than 4")
}
else if (a < 8 || b>2) && c == 2{
    print("Only if a is less than 8")
}
else{
    print(a)
    print(b)
}
 // you can have as many as else if that you want, but if one condition is true, that's the condition that will be used.

// || Or Operator -> if either one is true, then it will be true
// && And Operator -> if both of operators are true, then it will be true

// explanation: a and b must be true then process to c and it has to be true to make the output true



