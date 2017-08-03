
//
//  UIImage+Extend.swift
//  WXYourSister
//
//  Created by 魏翔 on 16/7/20.
//  Copyright © 2016年 魏翔. All rights reserved.
//

import UIKit

extension UIImage{
    
    
    func clipImageWith(borderColor color: UIColor?, borderWidth borderW: CGFloat?)->UIImage{
        
        //        设置外圆环宽度
        let borderW:CGFloat = (borderW == nil) ? 5 : borderW!
        
        //        设置外圆环颜色
        let loopColor = (color == nil) ? UIColor.red : color!
        
        //        设置外圆宽高
        let borderWH:CGFloat = size.width + 2*borderW
        
        //        设置图形上下文大小
        let imageContextSize = CGSize(width: borderWH,height: borderWH)
        
        //        开启图形上下文
        UIGraphicsBeginImageContext(imageContextSize)
        
        //        设置外圆路径
        let circlePath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: borderWH, height: borderWH))
        
        //        设置颜色
        loopColor.set()
        
        //        填充路径
        circlePath.fill()
        
        //        设置裁剪路径
        let clipPath = UIBezierPath(ovalIn: CGRect(x: borderW, y: borderW, width: size.width, height: size.height))
        
        //        裁剪
        clipPath.addClip()
        
        //       绘制图片
        draw(at: CGPoint(x: borderW, y: borderW))
        
        //        获取图片
        let clipImage = UIGraphicsGetImageFromCurrentImageContext()
        
        //        关闭上下文
        UIGraphicsEndImageContext()
        
        return clipImage!
    }
    
    
    class func imageWithCapture(_ oringinalView: UIView)->UIImage{
        
        //        开启图形上下文
        UIGraphicsBeginImageContext(oringinalView.frame.size)
        
        //        获取上下文
        let ctx = UIGraphicsGetCurrentContext()
        
        //        渲染当前图层
        oringinalView.layer.render(in: ctx!)
        
        //        从图形上下文中获取图片
        let captuerImage = UIGraphicsGetImageFromCurrentImageContext()
        
        
        return captuerImage!
    }
    
    /**
     按照图片的宽高比计算图片显示的大小
     */
    func displaySize() -> CGSize{
        // 1.拿到图片的宽高比
        let scale = self.size.height / self.size.width
        // 2.根据宽高比计算高度
        let width = Screen.bounds.width
        
        let height =  width * scale
        
        return CGSize(width: width, height: height)
    }

    
    /** 缩放图片 */
    func scaleToSize(_ size: CGSize) -> UIImage{
        
        // 创建一个bitmap的context
        // 并把它设置成为当前正在使用的context
        UIGraphicsBeginImageContext(size)
        // 绘制改变大小的图片
        draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        // 从当前context中创建一个改变大小后的图片
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        // 使当前的context出堆栈
        UIGraphicsEndImageContext()
        // 返回新的改变大小后的图片
        return scaledImage!
        
    }
    
    /** 压缩图片 */
    func compressImage(_ maxFileSize: Float)->UIImage{
        
        var compression: CGFloat = 0.9
        
        let maxCompression:CGFloat = 0.1
        
        var imageData = UIImageJPEGRepresentation(self, compression)
        
        while(Float(imageData!.count) > maxFileSize && compression > maxCompression){
            
            compression = compression - 0.1
            
            imageData = UIImageJPEGRepresentation(self, compression)
            
        }
        
        let compressedImage = UIImage(data: imageData!)
        
        return compressedImage!
        
    }
    
    //通过颜色绘制一个UIImage
    class func imageWithColor(color: UIColor, size: CGSize)->UIImage{
        
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
    
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image!
    }
    
}
