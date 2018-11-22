import UIKit

var hiroyukiSongs = ["aLIEz", "Keep On Keeping On", "Shout", "Barricades", "Pretenders"]

// Switch cases must be exhaustive
let numberOfSongs = hiroyukiSongs.count
switch numberOfSongs {
case 1 ... 2:
    print("You don't have a lot of songs")
case 3 ... 4:
    print("Maybe it's time to release a new EP")
case 5 ... 11:
    print("A few more songs to go!")
default:
    print("You are ready to release a full album")
}

// Fallthrough - Executes next case without checking condition
var number = 4
switch number {
case 4:
    print("Number is 4?")
    fallthrough
case 5:
    print("number is 5?")
default:
    print("Some other number")
}
