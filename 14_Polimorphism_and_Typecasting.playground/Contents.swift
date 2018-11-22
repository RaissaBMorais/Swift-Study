import UIKit

class Player {
    var name: String
    var position: String
    
    init(name: String, position: String){
        self.name = name
        self.position = position
    }
    
    func playing() -> String {
        return "\(name) is ready to play"
    }
}

class ForwardPlayer: Player {
    var goalsScored: Int
    
    init(name: String, goalsScored: Int) {
        self.goalsScored = goalsScored
        super.init(name: name, position: "Forward")
    }
    
    override func playing() -> String {
        return "\(name) is ready to score some goals"
    }
}

class Goalkeeper: Player {
    var numberOfSaves: Int
    
    init(name: String, numberOfSaves: Int) {
        self.numberOfSaves = numberOfSaves
        super.init(name: name, position: "Goalkeeper")
    }
    
    override func playing() -> String {
        return "\(name) is ready to save all shots"
    }
}

let rivaldo = ForwardPlayer(name: "Rivaldo", goalsScored: 15)
let ronaldo = ForwardPlayer(name: "Ronaldo", goalsScored: 17)
let buffon = Goalkeeper(name: "Buffon", numberOfSaves: 20)

//------------------ Polimorphism -----------------

// Array of Players with forwardPlayers and Goalkeepers
let soccerPlayers: [Player] = [rivaldo, ronaldo, buffon]

for player in soccerPlayers {
    // Will use the override methods of ForwardPlayer and Goalkeeper
    print(player.playing())
}

//------------------ Typecasting -----------------

for player in soccerPlayers {
    if let forwardPlayer = player as? ForwardPlayer {
        print("\(forwardPlayer.name) has scored \(forwardPlayer.goalsScored) goals")
    } else if let goalkeeper = player as? Goalkeeper {
        print("\(goalkeeper.name) has saved \(goalkeeper.numberOfSaves) shots")
    }
}

// Forced downcasting
let casillas = Goalkeeper(name: "Casillas", numberOfSaves: 19)

let keepers: [Player] = [buffon, casillas]

for goalkeeper in keepers {
    let keeper = goalkeeper as! Goalkeeper
    print("\(keeper.name) just saved their \(keeper.numberOfSaves) shot")
}

// Downcasting in a loop
for keeper in keepers as! [Goalkeeper] {
    print("\(keeper.name) saved \(keeper.numberOfSaves) shots")
}

let forwardPlayers: [Player] = [rivaldo, ronaldo]

// Optional downcasting using nil coalescing
// Try to downcast array, if it fails do nothing (create new empty array)
for player in forwardPlayers as? [ForwardPlayer] ?? [ForwardPlayer]() {
    print("\(player.name) has \(player.goalsScored) goals scored")
}
