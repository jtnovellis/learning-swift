import Foundation

//func add(_ lhs: Int,_ rhs: Int) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

let addition = add(20, 10)


func customAdd(_ lhs: Int,_ rhs: Int, using function: (Int, Int ) -> Int) -> Int {
    function(lhs, rhs)
}

//customAdd(20, 30, using: {(lhs: Int, rhs: Int) -> Int in
//    lhs + rhs
//})

customAdd(30, 20) { (lhs, rhs) in
    lhs + rhs
}

customAdd(30, 30) { $0 + $1 }


// method to organize an array

let ages = [30, 20, 19, 40]

ages.sorted {
 $0 > $1
}

ages.sorted {
 $0 < $1
}

ages.sorted(by: <)
ages.sorted(by: >)



func customAdd2(using function: (Int, Int ) -> Int, _ lhs: Int,_ rhs: Int ) -> Int {
    function(lhs, rhs)
}

customAdd2(using: { $0 + $1 }, 30, 40)





func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20, using: add10To(_:)
)
