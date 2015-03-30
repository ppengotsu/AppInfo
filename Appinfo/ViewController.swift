//
//  ViewController.swift
//  Appinfo
//
//  Created by ppengotsu on 2015/03/30.
//  Copyright (c) 2015年 ppengotsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //ログ出力
        var appInfo: AppInfo = AppInfo()
        NSLog("iOSバージョン=%@",appInfo.appVersion())
        NSLog("iOS9以上か=%@",appInfo.isMoreThan900AppVersion())
        NSLog("iOS8.2以上か=%@",appInfo.isMoreThan820AppVersion())
        NSLog("iOS8以上か=%@",appInfo.isMoreThan800AppVersion())
        
        NSLog("iPhoneSimulatorか=%@",appInfo.isIphoneSimulatorDevice())
        NSLog("iPadか=%@",appInfo.isIpadDevice())
        NSLog("iPhoneか=%@",appInfo.isIphoneDevice())
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

