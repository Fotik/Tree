//
//  ViewController.swift
//  Tree
//
//  Created by cidr5 on 3/15/18.
//  Copyright © 2018 cidr5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImage: UIImageView!
    
    @IBOutlet weak var sizeLabel: UILabel!
    
    var initOffsetX: CGFloat =
    let initOffsetY = treeImage.frame.origin.y
    
    @IBAction func onOffsetValueChange(_ sender: UISlider) {
        treeImage.frame.origin.x = CGFloat(sender.value) * 50
    }
    
    @IBAction func onSizeValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func onAngelValueChanged(_ sender: UISegmentedControl) {
    }
    
    @IBAction func onVisibilitySwitch(_ sender: UISwitch) {
    }
    
    @IBAction func onVisibilityValueChanged(_ sender: UIStepper) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initOffsetX = UIScreen.main.bounds.size.width
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

