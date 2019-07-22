//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Viktor on 23/07/2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.layer.cornerRadius = redColor.frame.size.height / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.height / 2
        greenColor.layer.cornerRadius = greenColor.frame.size.height / 2

        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    }
    
    @IBAction func nextColor(_ sender: UIButton) {
    }
    
}

