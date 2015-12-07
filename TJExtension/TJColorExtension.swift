//
//  TJColorExtension.swift
//  TJExtension
//
//  Created by tajika on 2015/12/08.
//  Copyright © 2015年 Tajika. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func rgba(r: Int, g: Int, b: Int, a: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }
    
    class func hexString(hex: String) -> UIColor {
        let scanner = NSScanner(string: hex)
        var color:UInt32 = 0
        if scanner.scanHexInt(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat((color & 0x0000FF)) / 255.0
            return UIColor(red:r, green:g, blue:b, alpha: 1)
        } else {
            print("invalid hex string")
            return UIColor.whiteColor()
        }
    }
    
}
