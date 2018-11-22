import UIKit

// Iterate through i using closed range operator. Including value 10
for i in 1...10 {
    print("\(i) x 10 is \(i*10)")
}

// Half open range operator does not include de value 5
for _ in 0 ..< 5 {
    print("Repeat me 5 times")
}

// Operating over arrays
var hiroyukiSongs = ["aLIEz", "Keep On Keeping On", "Shout", "Barricades", "Pretenders"]

for song in hiroyukiSongs {
    print("My favorite song is \(song)")
}

for i in 0 ..< hiroyukiSongs.count {
    print("Looping through songs: \(hiroyukiSongs[i])")
}

// Loop inside loop
var squareSize = 8
for _ in 1 ... squareSize {
    for _ in 1 ... squareSize {
        print("*", terminator: " ")
    }
    print("")
}

// While Loops
var counter = 1

while counter <= 5 {
    print("New Counter is \(counter)")
    counter += 1
}

// Break and Continue
counter = 1
while true {
    print("Counter is \(counter)")
    counter += 1
    
    if counter > 5 {
        break
    }
}

for song in hiroyukiSongs {
    
    // Skip the print statement below if the song is aLIEz
    if song == "aLIEz" {
        continue
    }
    
    print("\(song) starts with the letter \(song[song.startIndex])")
}

