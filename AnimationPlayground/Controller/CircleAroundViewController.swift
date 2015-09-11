//
//  CircleAroundViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/11.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class CircleAroundViewController: UIViewController {

    @IBOutlet weak var layerView: UIImageView!
    var manLayer: CALayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.manLayer = CALayer()
        self.manLayer.contents = UIImage(named: "snowman")?.CGImage
        self.manLayer.bounds = CGRectMake(0, 0, 30, 30)
        self.layerView.layer.addSublayer(self.manLayer)
        
        var frame = CGRectInset(self.layerView.bounds, -20, -20)
        var path = CGPathCreateWithEllipseInRect(frame, nil)
        var animation = CAKeyframeAnimation()
        animation.keyPath = "position"
        animation.path = path
        animation.duration = 4
        animation.additive = true
        animation.repeatCount = HUGE
        animation.calculationMode = kCAAnimationPaced
        animation.rotationMode = kCAAnimationRotateAuto
        
        self.manLayer.addAnimation(animation, forKey: "circlearound")
    }
}
