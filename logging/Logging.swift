//
//  Logging.swift
//
//  by hwj4477@gmail.com
//
//  last update 2016.01.26
//

import Foundation

public struct Logging {
    
    /**
     *  print log
     */
    public static func printLog(body : Any! = nil, filePath : String = __FILE__, functionName : String = __FUNCTION__, line : Int = __LINE__) -> Void {
        
        let filename = ((filePath as NSString).lastPathComponent as NSString).stringByDeletingPathExtension
        
        print("\(self.currentDateString()) [\(filename) - \(functionName):\(line)] \(String(body))")
    }
    
    /**
     *  helper
     */
    private static let dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.locale = NSLocale.currentLocale()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return formatter
    }()
    
    private static func currentDateString() -> String
    {
        return self.dateFormatter.stringFromDate(NSDate())
    }
}

/**
 *  Debug Log
 */
public func DebugLog(body : Any! = nil, filePath : String = __FILE__, functionName : String = __FUNCTION__, line : Int = __LINE__) -> Void {
    
    Logging.printLog(body, filePath: filePath, functionName: functionName, line: line)
}