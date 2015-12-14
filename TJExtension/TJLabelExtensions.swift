//
//  TJLabelExtensions.swift
//  TJExtension
//
//  Created by tajika on 2015/12/14.
//  Copyright © 2015年 Tajika. All rights reserved.
//

import UIKit

extension UILabel {
    
    @IBInspectable
    var underline: Bool {
        get {
            return self.underline
        }
        set {
            guard let text: String = self.text else {
                return
            }
            let textAttributes =  NSMutableAttributedString(string: text)
            if newValue {
                textAttributes.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(0, text.characters.count))
            } else {
                textAttributes.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleNone.rawValue, range: NSMakeRange(0, text.characters.count))
            }
            self.attributedText = textAttributes
        }
    }

}
