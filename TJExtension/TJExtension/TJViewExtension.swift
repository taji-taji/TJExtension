//
//  TJViewExtension.swift
//  TJExtension
//
//  Created by tajika on 2015/12/08.
//  Copyright © 2015年 Tajika. All rights reserved.
//

import UIKit

extension UIView {
    
    enum BorderPosition {
        case Top
        case Right
        case Bottom
        case Left
    }
    
    func border(borderWidth borderWidth: CGFloat, borderColor: UIColor?, borderRadius: CGFloat?) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor?.CGColor
        if borderRadius != nil {
            self.layer.cornerRadius = borderRadius!
        }
        self.layer.masksToBounds = true
    }

    func border(positions: [BorderPosition], borderWidth: CGFloat, borderColor: UIColor?) {

        let topLine = CALayer()
        let leftLine = CALayer()
        let bottomLine = CALayer()
        let rightLine = CALayer()
        
        self.layer.sublayers = nil
        
        if borderColor != nil {
            topLine.backgroundColor = borderColor!.CGColor
            leftLine.backgroundColor = borderColor!.CGColor
            bottomLine.backgroundColor = borderColor!.CGColor
            rightLine.backgroundColor = borderColor!.CGColor
        } else {
            topLine.backgroundColor = UIColor.whiteColor().CGColor
            leftLine.backgroundColor = UIColor.whiteColor().CGColor
            bottomLine.backgroundColor = UIColor.whiteColor().CGColor
            rightLine.backgroundColor = UIColor.whiteColor().CGColor
        }
        
        if positions.contains(.Top) {
            topLine.frame = CGRectMake(0.0, 0.0, self.frame.width, borderWidth)
            self.layer.addSublayer(topLine)
        }
        if positions.contains(.Left) {
            leftLine.frame = CGRectMake(0.0, 0.0, borderWidth, self.frame.height)
            self.layer.addSublayer(leftLine)
        }
        if positions.contains(.Bottom) {
            bottomLine.frame = CGRectMake(0.0, self.frame.height - borderWidth, self.frame.width, borderWidth)
            self.layer.addSublayer(bottomLine)
        }
        if positions.contains(.Right) {
            rightLine.frame = CGRectMake(self.frame.width - borderWidth, 0.0, borderWidth, self.frame.height)
            self.layer.addSublayer(rightLine)
        }

    }
    
}
