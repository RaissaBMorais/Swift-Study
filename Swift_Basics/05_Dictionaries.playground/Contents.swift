import UIKit

// Declaring an empty dictionary
var dictionaryStrings: [String: String] = [:]
var dictionary = Dictionary<String, String>()
var newDictionary = [String: String]() // Preferable syntax

var person = [
                "first": "Raissa",
                "last": "Morais",
                "birthday": "December"
            ]
person["first"] // Raissa
person["birthday"] // December

// Adding key value
person["favorite_anime"] = "Dragon Ball Z"

// Replacing Value - If key exists the value will be replaced
person["favorite_anime"] = "The Legend of Korra"
person["favorite_anime"] // The Legend of Korra

