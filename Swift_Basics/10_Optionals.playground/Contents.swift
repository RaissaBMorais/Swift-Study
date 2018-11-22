import UIKit

// Declaring Optionals
var optionalInt: Int? // Value nil

// Implicit unwrapped optional
var myNumber: Int!

//-------------- Unwrapping Optionals -------------
// With if let
if let number = optionalInt {
    print("Hooray! Your number is \(number)")
} else {
    print("No number here yet!")
}

// Force unwrapping
// Will crash if value is nil
optionalInt = 4
print("I am sure there is a number and it's value is \(optionalInt!)")

// Using implicit unwrapped optionals. No need for !
// Will crash if value is nil
myNumber = 3
print("My number plus 2 is \(myNumber + 2)")


// Functions with Optionals
var songs = ["Peace Loving People", "Shout", "Living Louder", "Keep On Keeping On", "The Woods"]

func firstHiroyukiSong(in array: [String]) -> String? {
    let hiroyukiSongs = ["aLIEz", "Keep On Keeping On", "Shout", "Barricades", "Pretenders"]
    
    for song in array {
        if hiroyukiSongs.contains(song) {
            return song
        }
    }
    return nil
}

firstHiroyukiSong(in: songs)
firstHiroyukiSong(in: ["Peace", "Tomorrow Is A New Day"])

//------------- Optional Chaining -----------
// uppercasedSong is of type String?
// If there is a song in the array uppercase it, otherwise it will be nil
let uppercasedSong = firstHiroyukiSong(in: songs)?.uppercased()

if let firstSong = uppercasedSong {
    print("The first Hiroyuki song uppercased is \(firstSong)")
}

//------------ Nil coalescing operator -----------
let song = firstHiroyukiSong(in: ["Let It Burn", "We Are The Brave"]) ?? "new song"
print("Playing \(song)")
