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
    public static func printLog(_ body : Any! = nil, filePath : String = #file, functionName : String = #function, line : Int = #line) -> Void {
        
        let filename = ((filePath as NSString).lastPathComponent as NSString).deletingPathExtension
        
        print("\(self.currentDateString()) [\(filename) - \(functionName):\(line)] \(String(describing: body))")
    }
    
    /**
     *  helper
     */
    fileprivate static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return formatter
    }()
    
    fileprivate static func currentDateString() -> String
    {
        return self.dateFormatter.string(from: Date())
    }
}

/**
 *  Debug Log
 */
public func DebugLog(_ body : Any! = nil, filePath : String = #file, functionName : String = #function, line : Int = #line) -> Void {
    
    Logging.printLog(body, filePath: filePath, functionName: functionName, line: line)
}
