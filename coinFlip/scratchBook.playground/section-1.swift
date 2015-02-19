// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum coinResult: UInt32 {
    case Heads
    case Tails
    
    static func headsOrTails() -> coinResult {
        // find the maximum enum value
        var maxValue: UInt32 = 0
        while let _ = self(rawValue: ++maxValue) {}
        
        // pick and return a new value
        let rand = arc4random_uniform(maxValue)
        
        
        return self(rawValue: rand)!
    }
    
    static func headsOrTailsString() -> String {
        switch coinResult.headsOrTails() {
        case .Heads:
            return "Heads"
        case .Tails:
            return "Tails"
            
        }
    }
    
}


coinResult.headsOrTailsString()










