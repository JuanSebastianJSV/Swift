import UIKit

// Array
// Array is a collection of data that stores collection of data

var a = "dog"
var b = "cat"
var c = "bird"

a = "my " + a

var d = ["dog","cat","bird"]

// Manually  assign the values
a = "my " + d[0]
b = "my " + d[1]
c = "my " + d[2]

// Using Iteration
for counter in 0...2{
    print("my " + d[counter])
}

for item in d{
    print("my " + item)
}

// Empty array
var e = [String]()

// Adding data to array
d += ["mouse","owl"] // += is for adding items or use append

//Removing data from array
d.remove(at: 0) // removing dog from array

// Changing data from array
d[0] = "turtle"

print(d[0])

// Counting data from array
d.count
