
let names = ["Scott", "Lori", "Charlotte", "Betty", "Stella", "Isabella", "Lilith"]

let namesBeginningWithS = names.filter({ (name: String) -> Bool in //in says the actual closure procedure is coming next
    return name.lowercased().characters.first! == "s"
}) //anon function

let namesIncludingAnE = names.filter {
    $0.lowercased().characters.contains("e") //$0 is first argument....inferred type
}

names.sorted(by: >)

print(names)

let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let flattendArray = nestedArray.flatMap { $0 } //flatmap takes in a transformer....we are simply returning the value instead of transforming it

print(flattendArray)

import Foundation

let randomName: String = {
    let randomIndex = Int(arc4random_uniform(UInt32(names.count)))
    return names[randomIndex]
}() //will execute closure immediately

let helloSayer = { print("Hello, world!") }

helloSayer()

let randomNameGetter: () -> String = {
    let randomIndex = Int(arc4random_uniform(UInt32(names.count)))
    return names[randomIndex]
}

randomNameGetter()


func simulateServerResponse(_ closure: @escaping () -> String) {
    let delay = DispatchTime.now() + .seconds(5)
    
    DispatchQueue.main.asyncAfter(deadline: delay) {
        print(closure())
    }
    print(randomNameGetter())
}

let printAfterDelay = {
    let delay = DispatchTime.now() + .seconds(5)
    
    DispatchQueue.main.asyncAfter(deadline: delay) {
        print("Printed after a delay")
    }
}

func execute(_ closure: () -> Void) {
    printAfterDelay()
}

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

//execute(printAfterDelay)

simulateServerResponse(randomNameGetter)
