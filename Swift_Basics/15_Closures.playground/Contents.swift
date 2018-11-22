import UIKit

func myFuncWithClosure(text: String, execute: (String) -> (String)) {
    let resultText = execute(text)
    print(resultText)
}


myFuncWithClosure(text: "trANSfoRm mE To LoweRCAse", execute: { myText in
    return myText.lowercased()
})

// Trailling Closure
// When closure is the last parameter it can be removed and provided as a block of code after the function
myFuncWithClosure(text: "text WiTh lOwer And UpPErcasE LeTTErs") { myText in
    return myText.lowercased().capitalized
}


// Creating closure in a constant
let capitalizeText: (String) -> (String) = { text in
    return text.capitalized
}

myFuncWithClosure(text: "capitalize me", execute: capitalizeText)


// Simplifying closures
let addTwoNumbers: (Int, Int) -> (Int) = { (a,b) in
    return a + b
}

// Parameter's names can be replaced with $0,$1,$2...
let addTwoNumbersSimplified: (Int, Int) -> (Int) = {
    return $0 + $1
}

// For simple operations return statement is not required
let addTwoNumbersMoreSimplified: (Int, Int) -> (Int) = { $0 + $1 }

print(addTwoNumbers(5,3))
print(addTwoNumbersSimplified(10,2))
print(addTwoNumbersMoreSimplified(2,4))

