//
//  AppInfo.swift
//  Appinfo
//
//  Created by ppengotsu on 2015/03/30.
//  Copyright (c) 2015年 ppengotsu. All rights reserved.
//
import Foundation
import UIKit

class AppInfo: NSObject{
    
    var processInfo: NSProcessInfo = NSProcessInfo()
    
    override init() {
        super.init()
        
    }
    
    //MARK: - OSバージョン
    
    /**
    iOSのバージョンが8.0.0以上か
    
    :returns:
    */
    func isMoreThan800AppVersion()->Bool{
       let version =  NSOperatingSystemVersion(majorVersion: 8, minorVersion: 0, patchVersion: 0)
        return processInfo.isOperatingSystemAtLeastVersion(version)
    }
    
    
    /**
    iOSのバージョンが8.2.0以上か
    
    :returns:
    */
    func isMoreThan820AppVersion()->Bool{
        let version =  NSOperatingSystemVersion(majorVersion: 8, minorVersion: 2, patchVersion: 0)
        return processInfo.isOperatingSystemAtLeastVersion(version)
    }
    
    /**
    iOSのバージョンが9.0.0以上か
    
    :returns:
    */
    func isMoreThan900AppVersion()->Bool{
        let version =  NSOperatingSystemVersion(majorVersion: 9, minorVersion: 0, patchVersion: 0)
        return processInfo.isOperatingSystemAtLeastVersion(version)
    }
    
    /**
    iOSのバージョン取得
    */
    func appVersion() -> String{
        
        return processInfo.operatingSystemVersionString
    }
    
    
    //MARK: - 端末の種類
    /**
    iPhoneかどうか
    
    :returns:
    */
    func isIphoneDevice() -> Bool{
        let deviceModel: NSString = UIDevice.currentDevice().model
        var range = deviceModel.rangeOfString("iPhone Simulator")
        if range.length > 0 {
            return false
        }

        range = deviceModel.rangeOfString("iPhone")
        
        if range.length > 0{
            return true
        }

        return false;

    }
    
    /**
    iPadかどうか
    
    :returns:
    */
    func isIpadDevice() -> Bool{
        let deviceModel: NSString = UIDevice.currentDevice().model
        var range = deviceModel.rangeOfString("iPad")
        if range.length > 0 {
            return true
        }
        
        return false;
        
    }
    
    /**
    iPhone Simulatorかどうか
    
    :returns:
    */
    func isIphoneSimulatorDevice() -> Bool{
        let deviceModel: NSString = UIDevice.currentDevice().model
        var range = deviceModel.rangeOfString("iPhone Simulator")
        if range.length > 0 {
            return true
        }
        
        return false
    }
    
    
}
