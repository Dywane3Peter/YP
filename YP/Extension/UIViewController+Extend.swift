
//
//  UIViewController+Extend.swift
//  WXYourSister
//
//  Created by 魏翔 on 16/6/21.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    class func controllerInitWithNib()->UIViewController{
        
        let str = stringFromClass(self)
        
        let vc = self.init(nibName: str, bundle: nil)
        
        return vc
    }
    
}
