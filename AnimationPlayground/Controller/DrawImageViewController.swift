//
//  DrawImageViewController.swift
//  AnimationPlayground
//
//  Created by sujian on 15/9/11.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

import UIKit

class DrawImageViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: "snowman")
        self.layerView.layer.contents = image?.CGImage
    }
}
