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
        borderedView.backgroundColor = UIColor.hexString("859495")
    }
    
    override func viewDidLayoutSubviews() {
        // 線の色をUIColorのExtension"rgba"で指定
        let borderColor = UIColor.rgba(255, g: 30, b: 20, a: 1.0)
        
        // TopとRightに線をつける
        borderedView.border([.Top, .Right], borderWidth: 3.5, borderColor: borderColor)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

