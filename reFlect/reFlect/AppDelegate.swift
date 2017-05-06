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
        /**  infoplist内容
         ["BuildMachineOSBuild": 16E195, "DTPlatformName": iphonesimulator, "DTPlatformVersion": 10.3, "CFBundleDevelopmentRegion": en, "DTXcode": 0831, "CFBundleIdentifier": com.SocererGroup.reFlect, "DTCompiler": com.apple.compilers.llvm.clang.1_0, "CFBundleShortVersionString": 1.0, "CFBundleExecutable": reFlect, "DTPlatformBuild": , "LSRequiresIPhoneOS": 1, "CFBundleVersion": 1, "UILaunchStoryboardName": LaunchScreen, "CFBundleSupportedPlatforms": <__NSArrayM 0x60800005ddf0>(
         iPhoneSimulator
         )
         , "CFBundleInfoDictionaryVersion": 6.0, "DTSDKBuild": 14E269, "UIDeviceFamily": <__NSArrayM 0x60800005dcd0>(
         1,
         2
         )
         , "CFBundleNumericVersion": 16809984, "UISupportedInterfaceOrientations": <__NSArrayM 0x60800005dd00>(
         UIInterfaceOrientationPortrait,
         UIInterfaceOrientationLandscapeLeft,
         UIInterfaceOrientationLandscapeRight
         )
         , "DTSDKName": iphonesimulator10.3, "DTXcodeBuild": 8E1000a, "CFBundlePackageType": APPL, "CFBundleName": reFlect, "UIRequiredDeviceCapabilities": <__NSArrayM 0x60800005dd60>(
         armv7
         )
         , "MinimumOSVersion": 10.0]
         */
        let an = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        
//        let vc = ViewController()
        let clsName = an + ".ViewController"
        let cls = NSClassFromString(clsName) as? ViewController.Type

        let vc = cls?.init()
        
        window?.rootViewController = vc
        
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

