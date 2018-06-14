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
        self.manLayer.contents = UIImage(named: "snowman")?.cgImage
        self.manLayer.bounds = CGRect(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        self.layerView.layer.addSublayer(self.manLayer)
      
      let frame = self.layerView.bounds.insetBy(dx: -20, dy: -20)
        var path =  CGPath.init(ellipseIn: frame, transform: nil) //CGPathCreateWithEllipseInRect(frame, nil)
        var animation = CAKeyframeAnimation()
        animation.keyPath = "position"
        animation.path = path
        animation.duration = 4
        animation.isAdditive = true
        animation.repeatCount = HUGE
        animation.calculationMode = kCAAnimationPaced
        animation.rotationMode = kCAAnimationRotateAuto
        
      self.manLayer.add(animation, forKey: "circlearound")
    }
}
