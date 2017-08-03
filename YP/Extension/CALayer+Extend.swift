//
//  CALayer+Extensd.swift
//  加载动画
//
//  Created by 魏翔 on 17/1/19.
//  Copyright © 2017年 魏翔. All rights reserved.
//

import UIKit

extension CALayer{
    
    class func layer(_ bounds: CGRect,_ contents: Any?)->CALayer{
        
        let layer = CALayer()
        layer.bounds = bounds
        layer.position = CGPoint(x: bounds.width * 0.5, y: bounds.height * 0.5)
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        layer.contents = contents
        layer.cornerRadius = layer.bounds.width * 0.5
        layer.masksToBounds = true
        return layer
        
    }
    
}
