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
    func any(block: (element : (Element)) -> (Bool)) -> Bool {
    
        for item in self {
    
            if(block(element: item)) {
                return true
            }
        }

        return false
        
    }
    
    /**
     *  Detect element
     */
    func detect(block: (element : (Element)) -> (Bool)) -> Element? {
        
        for item in self {
            
            if(block(element: item)) {
                return item
            }
        }
        
        return nil
        
    }
    
    /**
     *  Delete element
     */
    mutating func delete(block: (element : (Element)) -> (Bool)) -> Bool {
        
        for (index, item) in self.enumerate() {
            
            if(block(element: item)) {
                
                self.removeAtIndex(index)
                
                return true
            }
        }
        
        return false
        
    }
    
    /**
     *  Array to String
     */
    func join(delemiter : String) -> String? {
     
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
                
                if(itemVal == String(lastElement)) {
                    
                    result = result + String(itemVal)
                }
                else {
                    
                    result = result + String(item) + delemiter
                }
            }
            else {
                return nil
            }
        }
        
        return result
    }
}
