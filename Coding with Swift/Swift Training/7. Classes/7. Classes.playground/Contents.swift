import UIKit

var str = "Hello, playground"

// Classes

// Class synthax
// class name{
// block of code
// }

class BlogPost{
    var blogTitle = ""
    var blogBody = ""
    var blogAuthor = ""
    var numberOfComments = 0
// this class has 3 properties (blogTitle , blogBody, blogAuthor)

func addComment(){
    numberOfComments = numberOfComments + 1
}
}

let myPost = BlogPost()
myPost.blogTitle = "Hello PLAYGROUND"
myPost.blogBody = "Hello"
myPost.blogAuthor = "Ching Chong"
myPost.addComment()
print(myPost.numberOfComments)
print(myPost.blogAuthor)
// numberOfComments = 1 because function addComment is called here

let mySecondPost = BlogPost()
mySecondPost.blogTitle = "Goodbye Cruel World"
mySecondPost.blogBody = "The world is cruel"
mySecondPost.blogAuthor = "Jesseed"
print(mySecondPost.numberOfComments)
// number of comments = 0 because function add comment is not called
print(mySecondPost.blogTitle)
// an object (Blogpost object)

// A class definition is like a template or blueprint
// When you create an actual tangible instance of the class, that instance is called an object


