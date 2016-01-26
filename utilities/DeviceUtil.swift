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
        
        return UIDevice.currentDevice().name
    }
    
    class func systemVersion() -> String {
        
        return UIDevice.currentDevice().systemVersion
    }
    
    class func systemName() -> String {
        
        return UIDevice.currentDevice().systemName
    }
    
    class func appVersion() -> String? {
        
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleVersion") as? String
    }
        
    class func appName() -> String? {
        
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleName") as? String
    }
    
    class func bundleIdentifier() -> String? {
        
        return NSBundle.mainBundle().bundleIdentifier
    }
}