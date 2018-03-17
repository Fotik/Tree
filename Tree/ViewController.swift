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
    
    @IBOutlet weak var treeView: UIView!
    
    @IBOutlet weak var sizeStepper: UIStepper!
    
    var offsetMultiplierX: CGFloat = 0.0
    var offsetMultiplierY: CGFloat = 0.0
    
    @IBAction func onOffsetValueChange(_ sender: UISlider) {
        self.treeImage.frame.origin.x = CGFloat(sender.value) * self.offsetMultiplierX
        self.treeImage.frame.origin.y = CGFloat(sender.value) * self.offsetMultiplierY
    }
    
    @IBAction func onSizeValueChanged(_ sender: UIStepper) {
        self.treeImage.setValue(sender.value, forKey: "width")
        self.sizeLabel.setValue(sender.value, forKey: "text")
        self.calibrateOffsetSlider()
    }
    
    @IBAction func onAngelValueChanged(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 0.5) {
            let angel = Double(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
            self.treeImage.transform = CGAffineTransform(rotationAngle: CGFloat(angel/180 * .pi))
        }
    }
    
    @IBAction func onVisibilitySwitch(_ sender: UISwitch) {
        self.treeImage.setValue(sender.state.rawValue, forKey: "alpha")
    }
    
    @IBAction func onVisibilityValueChanged(_ sender: UIStepper) {
        self.treeImage.setValue(sender.value, forKey: "alpha")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calibrateOffsetSlider()
        self.sizeLabel.setValue(self.treeImage.frame.width, forKey: "text")
        self.sizeStepper.setValue(self.treeImage.frame.width, forKey: "value")
    }

    private func calibrateOffsetSlider()
    {
        self.offsetMultiplierX = self.treeView.frame.width - self.treeImage.frame.width
        self.offsetMultiplierY = self.treeView.frame.height - self.treeImage.frame.height
    }

}

