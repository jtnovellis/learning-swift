import Foundation

func noArgumentsAndNoReturnValues(){
    "I don't know what I'm doing"
}
noArgumentsAndNoReturnValues()

func plusTwo(value: Int){
    let newValue = value + 2
}
plusTwo(value: 40)

func newPlusTwo(value: Int) -> Int {
    value + 2
}
newPlusTwo(value: 30)

func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2
}
let customAdded = customAdd(value1: 20, value2: 30)



func customMinues(_ lhs: Int,_ rhs: Int) -> Int {
    lhs - rhs
}

let costomSubstracted = customMinues(20, 10)

func getFullName(firstName: String = "Jairo", lastName: String = "Toro") -> String {
    "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Jair")
getFullName(firstName: "Naya", lastName: "Novellis")
