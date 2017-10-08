
func sayHelloWorld() {
    print("Hello, world!")
}

func sayHelloTo(name: String) { //enforce type on params
    print("Hello, \(name)!")
}
sayHelloTo(name: "Max")

func say(_ greeting: String, to name: String) {
    print("\(greeting), \(name)!")
}

say("Goodbye", to: "Hollywood")

func add(_ a: Int, _ b: Int) -> Int { //define return type
    return a + b
}

add(4, 6)

func add(_ ints: Int...) -> Int {
    return ints.reduce(0, +)
}

add(2, 4, 6, 8, 10)

print("This", "is", "cool", separator: " ", terminator: "!")

var studentsScore = 76.0

func apply(extraCredit: Double, toScore score: inout Double) { // val is copied in...mutated and that mutated value is returned
    score += extraCredit
}

apply(extraCredit: 10.0, toScore: &studentsScore) //& means passed in as inout param type


let values = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
let suits = ["♠️", "♥️", "♦️", "♣️"]

import Foundation

func randomIndexFor(array: Array<Any>) -> Int {
    return Int(arc4random_uniform(UInt32(array.count)))
}

func dealACard() -> (value: String, suit: String) {
    let randomValueIndex = randomIndexFor(array: values)
    let randomSuitIndex = randomIndexFor(array: suits)

    return (values[randomValueIndex], suits[randomSuitIndex])
}

let card = dealACard()

card.0

card.suit

func add(ints: [Int]) -> Int {
    return ints.reduce(0, +)
}

func multiply(ints: [Int]) -> Int {
    return ints.reduce(1, *)
}

func perform(_ operation: ([Int]) -> Int, onInts ints: Int...) -> Int {
    return operation(ints)
}

perform(add, onInts: 1, 2, 3)

perform(multiply, onInts: 4, 5, 6)

func getOperationPerformer() -> ((([Int]) -> Int, Int...) -> Int) {
    return perform
}

let myOp = getOperationPerformer()

myOp(add, 7, 8, 9)