import UIKit

var str = "Hello, playground"
// Initializers Part 2
//There are 2 types of initializers, Designated Initializers (Init) and Convenience Initializer

class Person{
    var name = ""
}

class BlogPost{
    
    var title:String?
    var body = "Hey"
    var author:Person?
    var numberOfComments = 0
    
    // Designated Initializer (Init)
    init(){
        title = "My Title"
        author = Person()
    }
    // Convenience Initializer
    convenience init(customTitle:String){
        self.init()
        title = customTitle
    }
}

let post = BlogPost(customTitle: "A Custom Title")

