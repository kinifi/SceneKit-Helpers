//
//  MathHelper.swift
//
//  Created by Christopher Figueroa on 10/30/17.
//  Copyright © 2017 kinifi. All rights reserved.
//
import Foundation
import UIKit
import SceneKit


public class MathHelper {
    
    //returns a random number between 0 and the given max parameter
    static func RandomNum (max:Int) -> Int {
        
        let diceRoll = Int(arc4random_uniform(6))
        return diceRoll
        
    }
    
    //returns a number between 0 - 1 as a Double
    static func RandDouble () -> Double {
        return drand48()
    }
    
    //returns a random number between two given values
    static func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
}
