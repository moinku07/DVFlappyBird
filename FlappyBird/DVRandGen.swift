//
//  DVRandGen.swift
//  FlappyBird
//
//  Created by Moin Uddin on 6/20/15.
//  Copyright (c) 2015 Moin Uddin. All rights reserved.
//

import UIKit

class DVRandGen: NSObject {
    class func skRandf() -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(RAND_MAX)
    }
    
    class func skRand(_ low: CGFloat, high: CGFloat) -> CGFloat{
        return DVRandGen.skRandf() * (high - low) + low
    }
    
    class func skRandBool()->Bool{
        let number: Float = Float(arc4random() % 61) + 40
        if number.truncatingRemainder(dividingBy: 2) == 0{
            return true
        }
        return false
    }
}
