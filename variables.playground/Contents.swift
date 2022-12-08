import Foundation

// There are two ways to define variables, "var" and "let"
// let is a constant varibable inmutable
// var is a mutable variable

let myName = "Jairo"
let yourName = "Maria"
var otherName = "Naya"

// arrays in swift by default are structures
var names = [myName, yourName, otherName]

// we can append new name to "names" because is declare with "var"
names.append("John")

// Swift doesnt make a reference, directly make a copy of values in memory
// Does not modify the value of first variable
let moreNames = ["Foo", "Bar"]
var copy = moreNames
copy.append("Phone")



// making and array with class

let oldArray = NSMutableArray(
    array: ["one", "two", "three"]
)
// we can mutate "oldarray because is not a structure, is a class"
oldArray.add("four")

var newArray = oldArray
newArray.add("five")

// in this case old array is muted because it's a reference to newArray.
oldArray
newArray
