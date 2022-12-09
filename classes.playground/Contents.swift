import Foundation

class Person {
    var name: String
    var age: Int
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)

foo.age
foo.increaseAge()
foo.age

/// Classes let us to create an internal mutability without use a var in declaration, in difference with structures...
/// Also structures doesn't need an initialization in the constructor.


/// We can create a subclass from a class

class Vehicle {
    func goVroom(){
        "Vroom vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

/// until now, we can mutate the values inside the class internal and external way but we can make that class only can chage internal

class Person2 {
    private(set) var age: Int
    init(age: Int){
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}
let baz = Person2(age: 30)
baz.age
baz.increaseAge()
baz.age


// dessgnated initializer

class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init(){
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year: 2023
        )
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer
