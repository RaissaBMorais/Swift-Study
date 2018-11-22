import UIKit

// ----------- CONDITIONALS ----------

var action = String()
var hour = 12
var working = false
var lunchAtWork = Bool() // Default value is false

if hour == 8 {
    action = "Having Breakfast"
} else if hour == 12 {
    action = "Having lunch"
} else if hour == 18 {
    action = "Having Dinner"
} else {
    action = "Doing something else"
}

// Multiple Conditions and (&&) or (||)
if working == true && hour == 12 {
    lunchAtWork = true
}

// Conditions with NOT (!)
if !working {
    lunchAtWork = false
}

// one line condition
var happyAndKnowIt = true
var clapHand = happyAndKnowIt ? "Clap your hands!" : "Do nothing"
