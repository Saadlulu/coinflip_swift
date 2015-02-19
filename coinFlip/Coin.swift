//
//  Coil.swift
//  coinFlip
//
//  Created by Saad Lulu on 2/18/15.
//  Copyright (c) 2015 Lulus. All rights reserved.
//

import Foundation

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