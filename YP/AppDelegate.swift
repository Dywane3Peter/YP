//
//  AppDelegate.swift
//  YP
//
//  Created by peter on 2017/8/3.
//  Copyright © 2017年 peter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame:  UIScreen.main.bounds)
        window.backgroundColor = UIColor.white
        let tabBarVC = YPTabBarController()
        window.rootViewController = tabBarVC;
        self.window = window
        self.window?.makeKeyAndVisible()
        return true
    }

}

