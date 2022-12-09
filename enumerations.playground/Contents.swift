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
case .rabbit:
    "This is a rabbit"
    break
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

//switch wwwApple {
//case .fileOrFolder(
//    path: let path,
//    name: let name):
//    name
//    path
//    break
//case .wwwUrl(path: let path):
//    path
//    break
//case .song(artist: let artist, songName: let songName):
//    artist
//    songName
//    break
//}

// This is other syntax to write a switch with enum
switch wwwApple {
case let .fileOrFolder(
     path,
     name):
    name
    path
    break
case let .wwwUrl( path):
    path
    break
case let .song( artist,songName):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

// We can ignore some arguments from enum case example 👇🏾

let miPropiaRaza = Shortcut.song(artist: "Diomedes Diaz", songName: "Mi propia Raza")

if case let .song(_, songName) = miPropiaRaza {
    songName
}

//enum Vehicle {
//    case car(manufacter: String, model: String)
//    case bike(manufacter: String, year: Int)
//}

//let car = Vehicle.car(manufacter: "Tesla", model: "X")
//let bike = Vehicle.bike(manufacter: "HD", year: 1874)

//func getManufacturer(from vehicle: Vehicle) -> String {
//    switch vehicle {
//    case let .car(manufacter,_):
//        return manufacter
//    case let .bike(manufacter,_):
//        return manufacter
//    }
//}
//let manufacturer = getManufacturer(from: bike)

// we can pass the function inside of enum


enum Vehicle {
    case car(manufacter: String, model: String)
    case bike(manufacter: String, year: Int)
    func getManufacturer() -> String {
        switch self {
        case let .car(manufacter,_):
            return manufacter
        case let .bike(manufacter,_):
            return manufacter
        }
        
    }
}
let car = Vehicle.car(manufacter: "Tesla", model: "X")
let bike = Vehicle.bike(manufacter: "HD", year: 1874)
    
let manufacturerCar = car.getManufacturer()
let manufacturerBike = bike.getManufacturer()


// we can also give raw values to enum like this 👇🏾

enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.brother.rawValue
FamilyMember.mother.rawValue

// we can also extrect all the enum cases

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😳"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases

FavoriteEmoji.allCases.map(\.rawValue)

// I can also find the enum case key with the raw value

if let blush = FavoriteEmoji(rawValue: "😳") {
    "found the blush emoji"
    blush
} else {
    "This emoji doesn't exist"
}


// Mutatin in enumerations

enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight


// enumerations with reference to itselft

indirect enum IntOperation {
    case add(Int, Int)
    case substract(Int, Int)
    case freeHand(IntOperation)
    func calculateReault(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .substract(lhs, rhs):
            return lhs - rhs
        case let .freeHand(operation):
            return calculateReault(of: operation)
        }
    }
}

let freeHand = IntOperation.freeHand(.add(4, 6))
freeHand.calculateReault()
