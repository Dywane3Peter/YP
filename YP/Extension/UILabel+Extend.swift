//
//  UILabel+Extend.swift
//  Buddha
//
//  Created by 魏翔 on 16/9/1.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import UIKit

enum FontStyle{
    
    case systemFont
    
    case boldFont
    
    case italicFont
    
}

extension UILabel{
    
    class func createLabel(_ color: UIColor, fontSize: CGFloat, fontStyle: FontStyle? = .systemFont) -> UILabel{
       
        let label = UILabel()
        
        label.textColor = color
        
        switch fontStyle!{
            case .systemFont:
                label.font = UIFont.systemFont(ofSize: fontSize)
            case .boldFont:
                label.font = UIFont.boldSystemFont(ofSize: fontSize)
            case .italicFont:
                label.font = UIFont.italicSystemFont(ofSize: fontSize)
        }
        
        return label
    }
}

