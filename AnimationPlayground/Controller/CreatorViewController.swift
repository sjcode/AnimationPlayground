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
        let colorLayer : CALayer = CALayer()
        colorLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        colorLayer.backgroundColor = UIColor.red.cgColor
        self.layerView.layer.addSublayer(colorLayer)
    }
}
