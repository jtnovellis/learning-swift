import Foundation

// Structure are value types!!

struct Person {
    let name: String
    let age: Int
}
let foo = Person(
    name: "jairo",
    age: 20
)

foo.name
foo.age


struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name: String){
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer



struct Person2 {
    let name: String
    let lastName: String
    var fullName: String {
        "\(name) \(lastName)"
    }
  
}

let fooBar = Person2(
    name: "Jairo",
    lastName: "Toro"
)

fooBar.name
fooBar.lastName
fooBar.fullName




struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}


// Structures cannot subclass other structures
struct LivingThing {
    init(){
        "I'm a living thing"
    }
}
