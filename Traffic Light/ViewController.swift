//
//  ViewController.swift
//  Traffic Light
//
//  Created by Evgeniy Kuzin on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    let lightOff: CGFloat = 0.3
    let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
    }

    override func viewDidAppear(_ animated: Bool) {
        var roundRadius :CGFloat {
            redLight.frame.height / 2
        }
        redLight.layer.cornerRadius = roundRadius
        yellowLight.layer.cornerRadius = roundRadius
        greenLight.layer.cornerRadius = roundRadius
    }
    
    @IBAction func buttonTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redLight.alpha.isLess(than: lightOn) && yellowLight.alpha.isLess(than: lightOn) {
            redLight.alpha = lightOn
            greenLight.alpha = lightOff
        } else if yellowLight.alpha.isLess(than: lightOn) {
            yellowLight.alpha = lightOn
            redLight.alpha = lightOff
        } else {
            greenLight.alpha = lightOn
            yellowLight.alpha = lightOff
        }
    }
}

