import UIKit

class ForwardPlayer {
    var name: String
    var goalsScored: Int
    var shotPower: Int {
        //Property observers
        willSet {
            print("\(name) changed his shot power from \(shotPower) to \(newValue)")
        }
        didSet {
            print("\(name) had only \(oldValue) of power.")
        }
    }
    // Computed properties
    var potential: Int {
        get {
            return goalsScored * 2
        }
        // If the property is get only it could be done without "get"
        // var potential: Int { return goalScored * 2}
    }

    init(name: String, potential: Int, shotPower: Int) {
        self.name = name
        self.shotPower = shotPower
        self.goalsScored = 0
    }
}

var rivaldo = ForwardPlayer(name: "Rivaldo", potential: 20, shotPower: 15)
rivaldo.goalsScored += 1
print("Potential: \(rivaldo.potential)")

rivaldo.shotPower = 2


//----------------- Static properties and methods ----------------
struct WorldCupGame {
    static var ball = "Telstar 18"
    let teamOne: String
    let teamTwo: String
    private var score: String?
    
    static func gameWithBall() {
        print("Game for the world cup will be played with ball: \(self.ball)")
    }
    
    init (teamOne: String, teamTwo: String) {
        self.teamOne = teamOne
        self.teamTwo = teamTwo
    }
    
    mutating func startGame() {
        setScore()
        print("Starting Game...")
    }
    
    private mutating func setScore() {
        score = "\(teamOne) 0 : 0 \(teamTwo)"
        print("Score: \(score!)")
    }
}

WorldCupGame.gameWithBall()
WorldCupGame.ball = "Brazuca"
WorldCupGame.gameWithBall()

// Access control
var newGame = WorldCupGame(teamOne: "Brazil", teamTwo: "Germany")
newGame.startGame()
// Cannot access setScore because it is declared as private
// newGame.setScore
