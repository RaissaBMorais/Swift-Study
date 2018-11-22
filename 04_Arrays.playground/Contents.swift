import UIKit

// Declaring an empty array
var intArray: [Int] = []
var array = Array<Int>()
var newArray = [Int]() // Preferable syntax

// Declaring array with values
var evenNumbers = [2, 4, 6, 8]
var musicians = ["Aimer", "Hiroyuki Sawano", "Ayaka"]

// Accessing element in Array, indexed from (0, arraySize - 1)
evenNumbers[0]
evenNumbers[3]
// evenNumbers[4] would crash

// Getting type of elements of an Array
// Will print Array<Int>.Type
type(of: evenNumbers)

// Mixed Arrays have to be explicitly typed
var mixedArray: [Any] = [2, 4, 6, 8, "text"]
type(of: mixedArray) // Array<Any>.Type
//var mixedArray = [2, 4, 6, 8, "text"] // Doesn't Work

// Array Operations
var hiroyukiSongs = ["aLIEz", "Keep On Keeping On", "Shout"]
var hiroyukiSongsNew = ["Barricades", "Pretenders"]
var allHiroyukiSongs = hiroyukiSongs + hiroyukiSongsNew
allHiroyukiSongs += ["Gravity Wall"]

// Inserting items in array
intArray.append(5) // [5]
intArray.insert(3, at: 0) // [3, 5]
intArray[0] = 4 // intArray = [4, 5]
intArray.insert(contentsOf: [1, 2, 3], at: 0) // [1, 2, 3, 4, 5]




