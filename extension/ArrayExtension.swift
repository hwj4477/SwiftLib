//
//  ArrayExtension.swift
//
//  by hwj4477@gmail.com
//
//  last update 2016.01.25
//

import Foundation

public extension Array {
    
    /**
     *  Check element exist
     */
    func any(_ block: (_ element : (Element)) -> (Bool)) -> Bool {
    
        for item in self {
    
            if(block(item)) {
                return true
            }
        }

        return false
        
    }
    
    /**
     *  Detect element
     */
    func detect(_ block: (_ element : (Element)) -> (Bool)) -> Element? {
        
        for item in self {
            
            if(block(item)) {
                return item
            }
        }
        
        return nil
        
    }
    
    /**
     *  Delete element
     */
    mutating func delete(_ block: (_ element : (Element)) -> (Bool)) -> Bool {
        
        for (index, item) in self.enumerated() {
            
            if(block(item)) {
                
                self.remove(at: index)
                
                return true
            }
        }
        
        return false
        
    }
    
    /**
     *  Array to String
     */
    func join(_ delemiter : String) -> String? {
     
        if(self.isEmpty) {
            return nil
        }
        
        var result : String = ""
        
        for item in self {
            
            if let itemVal = item as? String {
                
                if(itemVal.characters.count == 0) {
                    continue
                }
                
                let lastElement = self.last!
                
                if(itemVal == String(describing: lastElement)) {
                    
                    result = result + String(itemVal)
                }
                else {
                    
                    result = result + String(describing: item) + delemiter
                }
            }
            else {
                return nil
            }
        }
        
        return result
    }
}
