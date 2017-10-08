
import Foundation

while arc4random_uniform(100) + 1 < 100 { //arc4random....state held in Foundation library
    print(".", terminator: "")
}

print()

repeat { //this is a do-while
    print(".", terminator: "")
} while arc4random_uniform(100) + 1 < 100
