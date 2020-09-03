import UIKit

var str = "Hello, playground"
// Properties

class Person{
    var name = ""
}

class BlogPost{
    
    // Computed Property
    var fullTitle:String{
        //Check if title and author are not nil
        if title != nil && author != nil{
            return title! + "by" + author!.name
        }
        else if title != nil{
            return title!
        }
        else{
            return "No title"
        }
    }
    var title:String?
    var body = "hey"
    var author:Person?
    var numberOfComments = 0
    
}

let author = Person()
author.name = "Juan Sebastian"

let myPost = BlogPost()
myPost.author = author
myPost.title = "Learn Swift for Beginners"

myPost.fullTitle
