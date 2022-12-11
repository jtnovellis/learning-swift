import Foundation

func perform<N: Numeric>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 30, and: 5)
perform(/, on: 40, and: 4)
perform(*, on: 4, and: 5)



func perform2<N>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N where N: Numeric {
    op(lhs, rhs)
}

perform2(+, on: 10, and: 20)
perform2(-, on: 30, and: 5)
perform2(/, on: 40, and: 4)
perform2(*, on: 4, and: 5)


protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping"
    }
    func run() {
        "Running"
    }
}

func jumpAndRun<T: CanJump & CanRun>(_ value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)
