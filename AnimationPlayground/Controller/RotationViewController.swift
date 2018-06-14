//
//  RotationViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/12.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var containView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let shipLayer = CALayer()
        shipLayer.frame =  CGRect(x: 0, y: 0, width: 128, height: 128) //CGRectMake(0, 0, 128, 128)
        shipLayer.position = CGPoint(x: 150, y: 150)
        shipLayer.contents = UIImage(named: "snowman")?.cgImage
        
        self.containView.layer .addSublayer(shipLayer)
        
        let animation1 = CABasicAnimation()
        animation1.keyPath = "transform.rotation"
        animation1.duration = 2
        animation1.toValue = 2 * M_PI
        animation1.repeatCount = HUGE
        //shipLayer.addAnimation(animation1, forKey: nil)
        
        let animation2 = CABasicAnimation()
        animation2.keyPath = "transform.scale"
        animation2.toValue = 2
        animation2.duration = 2
        animation2.repeatCount = HUGE
        //shipLayer.add

        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [animation1,animation2]
        animationGroup.duration = 4
        animationGroup.autoreverses = true
        animationGroup.repeatCount = HUGE
      shipLayer.add(animationGroup, forKey: nil)
    }

    

}
