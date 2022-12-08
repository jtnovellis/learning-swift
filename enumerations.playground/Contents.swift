import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
}

let cat = Animals.cat


if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "this is a dog"
} else  {
    "this is somthing else"
}

switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
default:
    "this is something else"
}
