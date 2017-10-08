
var firstName: String? = "Betty" //remember, String? is either a String or nil

var lastName: String? = "Gardner"

if let firstName = firstName { //this unwraps firstName and lets you use it as a constant
    print("Hello, \(firstName)") //if it is not nil
} else {
    print("Welcome, guest!") //if it is nil
}

if let firstName = firstName, var lastName = lastName {
    lastName = lastName.uppercased()
    print("Hello, my name is \(firstName) \(lastName)")
}
