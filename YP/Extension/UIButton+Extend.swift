//
//  UIButton+Extension.swift
//  Buddha
//
//  Created by 魏翔 on 16/9/1.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import UIKit

extension UIButton{
    
    class func createButton(_ imageName: String, title: String) -> UIButton{
       
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: UIControlState())
        
        btn.setTitle(title, for: UIControlState())
        
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        
        btn.setTitleColor(UIColor.darkGray, for: UIControlState())
        
        btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
        return btn
    }
    
}
