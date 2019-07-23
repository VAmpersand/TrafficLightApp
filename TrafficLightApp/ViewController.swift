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
    
    var redColorOff = true
    var yellowColorOff = true
    var greenColorOff = true
    

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
        
        if redColorOff && yellowColorOff && greenColorOff {
            redColor.alpha = 1
            redColorOff = false
            return
        }
        
        guard redColorOff else {
            redColor.alpha = 0.3
            redColorOff = true
            yellowColor.alpha = 1
            yellowColorOff = false
            return
        }
        
        guard yellowColorOff else {
            yellowColor.alpha = 0.3
            yellowColorOff = true
            greenColor.alpha = 1
            greenColorOff = false
            return
        }
        
        guard greenColorOff else {
           greenColor.alpha = 0.3
            greenColorOff = true
            redColor.alpha = 1
            redColorOff = false
            return
        }
    }
}

