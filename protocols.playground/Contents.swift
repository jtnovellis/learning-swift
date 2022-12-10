import Foundation

// protocols are a special type of objects
// I can create a set of rules that of object comform

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal brathing..."
    }
}


let dog = Animal()
let cat = Animal()
dog.breathe()
cat.breathe()


protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {
    
}
let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

extension HasName {
    func describeMe() -> String {
        "Your name is \(name) and you are \(age) years old"
    }
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(
    name: "Woof", age: 10
)

woof.name
woof.age
woof.describeMe()
woof.increaseAge()
woof.age


protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 20)
bike.speed


func describe(obj: Any) {
    if obj is Vehicle {
        "obj conforms to the Vehicle Protocol"
    } else {
        "obj doesn't conform to the Vehicle Protocol"
    }
}

describe(obj: bike)

// to having acces to all properties of protocol we need the syntax "as"

func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    } else {
        "this was not a vehicle"
    }
}

increaseSpeedIfVehicle(obj: bike)

/// if we show a property of bike structure, we notice that they are different becase in the function
/// the argument any is creating a new place in memory

bike.speed
