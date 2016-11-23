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
    class func getFilePath(_ pathType : FileManager.SearchPathDirectory) -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(pathType, .userDomainMask, true)[0] as String
        
        return paths
    }
    
    class func getFilePath(_ fileName : String, pathType : FileManager.SearchPathDirectory) -> String {
        
        let paths = getFilePath(pathType)
        
        return "\(paths)/\(fileName)"
    }
}
