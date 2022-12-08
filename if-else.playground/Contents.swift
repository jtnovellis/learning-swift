import Foundation

let name = "Jairo"
let age = 28
let yourName = "Naya"
let yourAge = 50

if name == "jairo" {
    "your name is \(name)"
} else {
    "Oops, I guessed it wrong"
}

if name == "Jairo" {
    "Now I guessed it correctly"
} else if name == "Foo" {
    "Are you foo?"
} else {
    "Ol, I give up"
}


if name == "Jairo" && age == 28 {
    "Name is \(name) and age is \(age)"
} else {
    "Ol, I give up"
}



if name == "Jairo" || age == 28 {
    "Name is \(name) and age is \(age)"
} else {
    "Ol, I give up"
}
