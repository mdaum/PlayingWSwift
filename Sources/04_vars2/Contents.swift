
var wordsOfWisdom: String //mutable

//print(wordsOfWisdom)

wordsOfWisdom = "Do or do not. There is no try."

wordsOfWisdom = "lol"

var one, two, three: Int

one = 1
two = 2
three = 3

let constantString: String //immutable

constantString = "Don't wish. Do."

//constantString = "Changed!"

var maybeAString: String? //either a String or nil

print(maybeAString)

maybeAString = ""

maybeAString?.isEmpty

maybeAString == nil

maybeAString = "Luck favors the prepared."

print(maybeAString!) //will forcibly unwrap this and cast as String

let definitelyAString = maybeAString!

var mostLikelyAnInt: Int!

mostLikelyAnInt = 5

print(mostLikelyAnInt)