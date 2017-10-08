
func processInput(input: String) { }

func processInput(input: Int) { }

func processInput(int: Int) { }

func processInput(input: Int) -> String {
    return "\(input)."
}

func processInput(input: Int) -> Int {
    return input * input
}

let a = 1 + 2

let b = 1.0 + 2.0

a ~= 3 //pattern matching operator

func ~=(integer: Int, double: Double) -> Bool { //overload this and you can define new comparators
    return integer == Int(double)
}

a ~= b

func ~=(integer: Int, string: String) -> Bool {
    return "\(integer)" == string
}

let c = "3"

a ~= c
