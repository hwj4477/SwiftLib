//
//  IntExtension.swift
//
//  by hwj4477@gmail.com
//
//  last update 2016.01.25
//

import Foundation

public extension Int {

    /**
     *  Call function self times.
     */
    func times(_ task : (_ n : Int) -> Void) {
        
        for num in 0 ..< self {
            
            task(num)
        }
    }
    
    /**
     *  Call function self - to.
     */
    func upto(_ to : Int, task : (_ n : Int) -> Void) {
        
        for num in self ... to {
            
            task(num)
        }
    }
    
    /**
     *  Check value : even
     */
    func isEven () -> Bool {
        
        return (self % 2) == 0
    }
    
    /**
     *  Check value : odd
     */
    func isOdd () -> Bool {
        
        return (self % 2) != 0
    }
    
}
