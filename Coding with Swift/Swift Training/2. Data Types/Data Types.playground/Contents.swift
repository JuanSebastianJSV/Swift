// Playground - noun: a place where people can play
import UIKit
// Data Types
var str:String = "Hello, playground"

// String: Piece of Text
// Int: Whole numbers positive and negative
// Float: decimal numbers / floating point numbers
// Double: Large decimal numbers
// Boolean / Bool: True or False / Yes or No

//str = 29 (cannot assign value of type Int to String)
// this will cause an error because you are trying to store an Int to a String
// str = "29"
// or you can declare 29 as a stribng by adding ""
// or you can do a typecasting

str = String(29)

print(str)

var f: String
// var to declare a var
// f -> name of the variable
// String -> data type, it means str can only store String datatype


var a:Int = 2
var b:Int = 1
var c:Float = 2.3
var d:Double = 13.9
var e:Bool = true

print(Int(c)) // typecasting
print(Int(d)) // typecasting
print(round(d)) // rounding up
print(round(c)) // rounding down
print(Int(round(d))) // rounding and typecasting
