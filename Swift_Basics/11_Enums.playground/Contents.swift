import UIKit

enum PlayerPosition {
    case goalkeeper
    case defender
    case midfielder
    case forward
}

func actionFor(position: PlayerPosition) -> String {
    switch position {
    case .goalkeeper:
        return "Save"
    case .defender:
        return "Defend"
    case .midfielder:
        return "Pass"
    case .forward:
        return "Shoot"
    }
}

let position = PlayerPosition.forward
let action = actionFor(position: position)
print("It is the \(position) job to \(action)")


// Enums with aditional values
enum ForwardPosition {
    case leftWinger(crossPower: Int)
    case rightWinger(crossPower: Int)
    case Striker(shotPower: Int, canDribble: Bool)
}

func performAttack(position: ForwardPosition) {
    switch position {
    case .leftWinger(let crossPower) where crossPower > 10, .rightWinger(let crossPower) where crossPower > 10 :
        print("The ball was crossed")
    case .Striker(let shotPower, let dribbles) where shotPower > 10 && dribbles == true:
        print("Forward dribbled the defense then scored")
    case .Striker(let shotPower, _) where shotPower > 10:
        print("Forward Shot and scored")
    case .Striker(let shotPower, _) where (5...10).contains(shotPower):
        print("Forward shot, the ball hit the bar and entered")
    default:
        print("The attack wasn't successful")
    }
}

let winger = ForwardPosition.leftWinger(crossPower: 11)
let striker = ForwardPosition.Striker(shotPower: 2, canDribble: true)
performAttack(position: winger)
performAttack(position: striker)
