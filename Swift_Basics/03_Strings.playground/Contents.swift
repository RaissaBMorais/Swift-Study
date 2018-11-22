import UIKit

var name = "Rai Morais"
var age = 26

// String interpolation
print("Hello, " + name)

// Cannot add Int or Double using + syntax, would have to cast to String
// print("Your age is " + age)
print("Your age is " + String(age))

// Better way to use String interpolation
"\(name) is \(age) years old"
