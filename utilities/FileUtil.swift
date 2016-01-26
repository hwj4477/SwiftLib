//
//  FileUtil.swift
//
//  by hwj4477@gmail.com
//
//  last update 2016.01.25
//

import Foundation

class FileUtil {
    
    /**
     *  File Path
     */
    class func getFilePath(pathType : NSSearchPathDirectory) -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(pathType, .UserDomainMask, true)[0] as String
        
        return paths
    }
    
    class func getFilePath(fileName : String, pathType : NSSearchPathDirectory) -> String {
        
        let paths = getFilePath(pathType)
        
        return "\(paths)/\(fileName)"
    }
}