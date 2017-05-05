//
//  AppDelegate.swift
//  reFlect
//
//  Created by 李明禄 on 2017/5/5.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.backgroundColor = UIColor.blue
        
//        let vc = ViewController()
        let clsName = "reFlect.ViewController"
        let cls = NSClassFromString(clsName) as? ViewController.Type

        let vc = cls?.init()
        
        window?.rootViewController = vc
        
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

