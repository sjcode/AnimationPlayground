//
//  ShapeLayerViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/11.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class ShapeLayerViewController: UIViewController {

    @IBOutlet weak var containLayer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 150))
        bezierPath.addCurve(to: CGPoint(x: 300, y: 150), controlPoint1: CGPoint(x: 75, y: 0), controlPoint2: CGPoint(x: 225, y: 300))
      
        
        let pathLayer = CAShapeLayer()
        pathLayer.path = bezierPath.cgPath
        pathLayer.fillColor = UIColor.clear.cgColor
        pathLayer.strokeColor = UIColor.red.cgColor
        pathLayer.lineWidth = 3.0
        self.containLayer.layer .addSublayer(pathLayer)
        
        let bikeImage = UIImage(named: "bike")!
        let bikeLayer = CALayer()
        bikeLayer.contents = bikeImage.cgImage
        bikeLayer.frame = CGRect(x: 0, y: 0, width: 30, height: 20)
        bikeLayer.position = CGPoint(x: 0, y: 150)
        self.containLayer.layer.addSublayer(bikeLayer)
        
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position"
        animation.duration = 4
        animation.path = bezierPath.cgPath
      bikeLayer.position = CGPoint(x: 300, y: 150)
        animation.rotationMode = kCAAnimationRotateAuto
      bikeLayer.add(animation, forKey: nil)
        
    }

}
