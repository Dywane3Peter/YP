
//
//  UIScreen+Extend.swift
//  WXYourSister
//
//  Created by 魏翔 on 16/6/21.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import Foundation
import UIKit

struct Screen {
    
    /**  bounds  */
    static var bounds: CGRect {
        
        return UIScreen.main.bounds
    }
    
    /**  size  */
    static var size: CGSize {
        return self.bounds.size
    }
    
    /**  height  */
    static var height: CGFloat {
        return self.size.height
    }
    
    /**  width  */
    static var width: CGFloat{
        return self.size.width
    }
    
}
