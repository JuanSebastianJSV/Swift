import UIKit

// Optionals

var str = "Hello, playground"

class Person{
    
    var name = ""
}

class BlogPost{
    var title:String? // ? is an optional, title can be empty or it can be contains a string
    var body = "hai" // it always have a value because it is assigned with a value.
    var author:Person? // we can also assign a function like so
    var numberOfComments = 0
}

// you can see like a box, you can see its a string or person but you dont know what is inside it.

let post = BlogPost()

print(post.body + " hello!")

// Optional Binding
post.title = "Yo"

// Way 1
if let actualTitle = post.title {
    print(actualTitle + " salut")
}
// saying that you're unwrapping title property and if there's a value inside, you can assign the value inside actual title. but if it's empty, dont execute the code.

// Way 2 (Force Unwrapping)
// if you dont wanna check it but you want to unwrap it

print(post.title! + " salut")
// if the value is empty, you will get an error.
//! is used to force unwrap

// Testing if it is nil
if post.title != nil{
    // Optional Contains Value
    print(post.title! + " salut")
}
if post.title == nil{
    // Optional Contains No Value
}
