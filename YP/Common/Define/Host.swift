//
//  Host.swift

//
//  Created by 魏翔 on 16/6/21.
//  Copyright © 2016年 魏翔. All rights reserved.
//
import Foundation

/** 服务器主地址 */
let BaseURL = "http://127.0.0.1/"

extension String {
    
    var completeURL: String {return BaseURL + self}
    
}
