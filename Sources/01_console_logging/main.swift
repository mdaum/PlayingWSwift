//
// Created by mdaum on 10/7/17.
//

import Foundation
var str = "Hello, playground"
var hello = "Hello,";var playground = "playground"
for i in 0..<64 {
    var point = sin(Double(i) * 100)
}
print (str)

NSLog(str)

print (hello,playground) //variatic parameter

print(hello,playground, separator: "_", terminator: "")
print("...")
print("\(hello) viewer!!") //interpolation

func printLiteralExpressions(){ //can use reserved vars for debugging purposes
    print("Function: \(#function)")
    print("File: \(#file)")
    print("Line: \(#line)")
    print("Column: \(#column)")
}

printLiteralExpressions()