//
//  CreatorViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/11.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class CreatorViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.createSubLayer()
    }
    
    func createSubLayer(){
        var colorLayer : CALayer = CALayer();
        colorLayer.bounds = CGRectMake(0, 0, 100, 100);
        colorLayer.backgroundColor = UIColor.redColor().CGColor
        self.layerView.layer.addSublayer(colorLayer);
    }
}
