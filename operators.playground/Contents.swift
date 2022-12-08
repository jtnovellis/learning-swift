import Foundation

let myAge = 28
let yourAge = 20

// grather than operators
// less than operators
if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "We are the same age"
}

let myMotherAge = myAge + 30
let dobleMyAge = myAge * 2

// there are three types of operators
/// 1. unary prefix
let foo = !true

/// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)


/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"



// Ternary operators
let age = 30
let message = age >= 18 ? "You are an adult" : "You are not an adult"
