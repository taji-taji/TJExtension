//
//  ViewController.swift
//  TJExtension
//
//  Created by tajika on 2015/12/08.
//  Copyright © 2015年 Tajika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var borderedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ビューの背景色を指定
        borderedView.backgroundColor = UIColor(hex: 0x859495, alpha: 1.0)
    }
    
    override func viewDidLayoutSubviews() {
        // 線の色をUIColorのExtensionで指定
        let borderColor = UIColor(intRed: 255, green: 30, blue: 20, alpha: 1.0)
        
        // TopとRightに線をつける
        borderedView.border([.Top, .Right], borderWidth: 3.5, borderColor: borderColor)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField){
        print("textFieldDidBeginEditing:" + textField.text!)
    }

    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing:" + textField.text!)
        
        return true
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

}

