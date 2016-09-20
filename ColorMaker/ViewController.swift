//
//  ViewController.swift
//  ColorMaker
//
//  Created by Hom, Kenneth on 9/19/16.
//  Copyright © 2016 Hom, Kenneth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = UIColor(colorLiteralRed: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        colorView.layer.cornerRadius = 5
        colorView.layer.masksToBounds = true
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let newColor = UIColor(colorLiteralRed: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: 1.0)
        colorView.backgroundColor = newColor
    }
    

}

