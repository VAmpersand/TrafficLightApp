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
    @IBOutlet weak var switchButton: UIButton!
    
    var redLightOff = true
    var yellowLightOff = true
    var greenLightOff = true
    
    override func viewDidAppear(_ animated: Bool) {
    
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    
        redColor.layer.cornerRadius = redColor.frame.size.height / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.height / 2
        greenColor.layer.cornerRadius = greenColor.frame.size.height / 2
    }
    
    @IBAction func nextColor(_ sender: UIButton) {
        
        if redLightOff && yellowLightOff && greenLightOff {
            redColor.alpha = 1
            redLightOff = false
            switchButton.setTitle("NEXT", for: .normal)
            return
        }
        
        guard redLightOff else {
            redColor.alpha = 0.3
            redLightOff = true
            yellowColor.alpha = 1
            yellowLightOff = false
            return
        }
        
        guard yellowLightOff else {
            yellowColor.alpha = 0.3
            yellowLightOff = true
            greenColor.alpha = 1
            greenLightOff = false
            return
        }
        
        guard greenLightOff else {
            greenColor.alpha = 0.3
            greenLightOff = true
            redColor.alpha = 1
            redLightOff = false
            return
        }
    }
}

