import UIKit

// Functions and parameters
func favoriteSongs() {
    print("All songs are my favorite")
}

func uniqueFavoritesong(song: String) {
    print("My favorite song is \(song)")
}

func animeForTheSong(song: String, anime: String) {
    print("The song \(song) is from the anime \(anime)")
}

favoriteSongs()
uniqueFavoritesong(song: "aLIEz")
animeForTheSong(song: "Gravity Wall", anime: "Re:Creation")

var hiroyukiSongs = ["aLIEz", "Keep On Keeping On", "Shout", "Barricades", "Pretenders"]

// Same external and internal name
func countSongsIn(array: [String]) {
    print("The artist has \(array.count) songs.")
}
countSongsIn(array: hiroyukiSongs)

// Different external and internal name
func countSongsIn(myArray array: [String]) {
    print("The artist has \(array.count) songs. Wow!")
}
countSongsIn(myArray: hiroyukiSongs)

// No external name
func countSongsInArray(_ array: [String]) {
    print("The artist has \(array.count) songs. Nice!")
}
countSongsInArray(hiroyukiSongs)

//---------- Return Values ----------
func isSong(_ song: String, in array: [String]) -> Bool {
    if array.contains(song) { return true }
    return false
}

if isSong("aLIEz", in: hiroyukiSongs) {
    print("That's one of HiroyukiSawano's Songs")
} else {
    print("That song is from another artist")
}

