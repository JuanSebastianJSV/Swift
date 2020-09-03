import UIKit

var str = "Hello, playground"
var sum = 0
// Looping
// There are 3 types of loop in Swift

//1. For Loop
for index in 1...5{
    sum = sum+index
}
print(sum)

//2. While Loop
var counter:Int = 0
while counter >= 0 && counter<10{
    print("Hello")
    counter = counter+1
}

//3. Repeat - While Loop
var x:Int = 0
repeat {
    print("Hi")
    x = x+1
}
while x<5
