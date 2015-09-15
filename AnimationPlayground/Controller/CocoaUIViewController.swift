//
//  CocoaUIViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/11.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class CocoaUIViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var passwordPanel: UIView!
    @IBOutlet weak var passwordTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == passwordTextFiled{
            var animation = CAKeyframeAnimation()
            animation.keyPath = "position.x"
            animation.values = [0,10,-10,10,0]
            animation.keyTimes = [0, 1/6.0, 3/6.0, 5/6.0, 1]
            animation.duration = 0.4
            animation.additive = true
            self.passwordPanel.layer.addAnimation(animation, forKey: nil)
        }
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
}
