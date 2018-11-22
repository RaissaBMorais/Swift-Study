import UIKit

// Struct are value Types
// Classes are reference Types


//-------------------- Struct -------------------
struct PlayerStruct {
    var name: String
    var position: String
    
    // Function inside a struct is called a method
    func describe(){
        print("\(name) plays as a \(position)")
    }
    
    // Method that changes the value of struct must be declared as mutating
    mutating func changePosition(to newPosition: String) {
        position = newPosition
    }
}

// Structs come with default memberwise Initializer
// Creating Instances of struct
let robertoCarlos = PlayerStruct(name: "Roberto Carlos", position: "Defender")
let ronaldo = PlayerStruct(name: "Ronaldo", position: "Forward")
var rivaldo = PlayerStruct(name: "Rivaldo", position: "Forward")

//Accessing struct Properties
robertoCarlos.describe()
// Cannot call changePosition on robertoCarlos because it was declared with let and it's properties cannot be changed
//robertoCarlos.changePosition(to: "Left Defender")

rivaldo.changePosition(to: "Striker")
rivaldo.describe()

var ronaldinho = ronaldo

// Swift uses copy on write
// When the values of ronaldinho change they are copied in memory
ronaldinho.name = "Ronaldinho"

// names are different because structs are copied
print(ronaldo)
print(ronaldinho)

//-------------------- Class -------------------
class ForwardPlayer {
    var name: String
    var goalsScored: Int
    let shotPower: Int
    
    // Classes do not come with default memberwise initializer
    // All properties must be set, expect optionals
    init(name: String, goalsScored: Int, shotPower: Int) {
        self.name = name
        self.goalsScored = goalsScored
        self.shotPower = shotPower
    }
    
    // It is possible to create multiple initializers
    init(name: String, shotPower: Int) {
        self.name = name
        goalsScored = 0
        self.shotPower = shotPower
    }
    
    func shootBall() {
        if shotPower > 10 {
            print("\(name) Scored")
        } else {
            print("Nice save from the keeper")
        }
        
    }
}

// Creating instance of a Class, Called "Object"
let rooney = ForwardPlayer(name: "Wayne Rooney", goalsScored: 10, shotPower: 11)
var firmino = ForwardPlayer(name: "Roberto Firmino", goalsScored: 5, shotPower: 9)

// Shot power is a constant(declared with let) and cannot be changed even though firmino was declared as a var
//firmino.shotPower += 1

rooney.goalsScored += 1
print(rooney.goalsScored)

// Despite firmino being declared as a constant, the property goalsScored is a var and can be changed
// This works because classes are reference types
firmino.goalsScored += 1
print(firmino.goalsScored)

// Roberto carlos is a struct declared with let
// Since structs are value types its properties cannot be changed even if the properties are declared as var
//robertoCarlos.name = "Roberto"



// ------------ Class Inheritance ------------
class Player {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() {
        print("\(name) is ready to play")
    }
}

class GoalKeeper: Player {
    override func play() {
        print("\(name) is going to save all the shots")
    }
}

let buffon = GoalKeeper(name: "Buffon")
buffon.play()

class Midfielder: Player {
    var passAccuracy: Int
    
    init(name: String, passAccuracy: Int) {
        self.passAccuracy = passAccuracy
        super.init(name: name)
    }
}

let pirlo = Midfielder(name: "Pirlo", passAccuracy: 30)
// Uses play method of superclass Player
pirlo.play()
