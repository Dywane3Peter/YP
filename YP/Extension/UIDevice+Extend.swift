//
//  UIDevice+Extend.swift
//  WXYourSister
//
//  Created by 魏翔 on 16/7/28.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import UIKit

 /** 是否是iPhone 4系列 */
func iPhone4x_320_480() -> Bool{
    return isDevice(width: 320, height: 480)
}

/** 是否是iPhone 5系列 */
func iPhone5x_320_568() -> Bool{
    return isDevice(width: 320, height: 568)
}

/** 是否是iPhone 6 */
func iPhone6_375_667() -> Bool{
    return isDevice(width: 375, height: 667)
}

/** 是否是iPhone 6 Plus */
func iPhone6Plus_414_736_Portait() -> Bool{
    return isDevice(width: 414, height: 736)
}

/** 通用方法 */
func isDevice(width: CGFloat, height: CGFloat) -> Bool{
    return Screen.width == width && Screen.height == height
}

 /** 是否是iOS 7 */
func iOS7() -> Bool{
    return (UIDevice.versionName >= 7.0) && (UIDevice.versionName < 8.0)
}

/** 是否是iOS 8 */
func iOS8() -> Bool{
    return (UIDevice.versionName >= 8.0) && (UIDevice.versionName < 9.0)
}

/** 是否是iOS 9 */
func iOS9() -> Bool{
    return (UIDevice.versionName >= 9.0) && (UIDevice.versionName < 10.0)
}

extension UIDevice{
    static var versionName: Float {return (UIDevice.current.systemVersion as NSString).floatValue}
}
