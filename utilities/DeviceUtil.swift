//
//  DeviceUtil.swift
//
//  by hwj4477@gmail.com
//
//  last update 2016.01.25
//

import UIKit

class DeviceUtil {
    
    /**
     *  Device Info
     */
    class func name() -> String {
        
        return UIDevice.current.name
    }
    
    class func systemVersion() -> String {
        
        return UIDevice.current.systemVersion
    }
    
    class func systemName() -> String {
        
        return UIDevice.current.systemName
    }
    
    class func appVersion() -> String? {
        
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
        
    class func appName() -> String? {
        
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
    }
    
    class func bundleIdentifier() -> String? {
        
        return Bundle.main.bundleIdentifier
    }
}
