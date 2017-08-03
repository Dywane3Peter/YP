//
//  YPTabBarController.swift
//  YP
//
//  Created by peter on 2017/8/3.
//  Copyright © 2017年 peter. All rights reserved.
//

import UIKit

class YPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setSubUpTabBarVC();
        self.selectedIndex = 1
    }

    func setSubUpTabBarVC() {
        let homeVC = HomeVC.controllerInitWithNib()
        let homeNavBarVC = UINavigationController(rootViewController: homeVC)
        homeNavBarVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "calendar")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "calendar_highlight")?.withRenderingMode(.alwaysOriginal))
        homeNavBarVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        self.addChildViewController(homeNavBarVC)
        
        let runVC = RunVC.controllerInitWithNib()
        let runNavBarVC = UINavigationController(rootViewController: runVC)
        runNavBarVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "run")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "run_highlight")?.withRenderingMode(.alwaysOriginal))
        runNavBarVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        self.addChildViewController(runNavBarVC)
        
        let settingVC = SettingVC.controllerInitWithNib()
        let settingNavBarVC = UINavigationController(rootViewController: settingVC)
        settingNavBarVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "user")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "user_highlight")?.withRenderingMode(.alwaysOriginal))
        settingNavBarVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        self.addChildViewController(settingNavBarVC)
        self.hidesBottomBarWhenPushed = true;
    }
}
