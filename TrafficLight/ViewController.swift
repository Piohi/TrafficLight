//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton Godunov on 26.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var changeColorButton: UIButton!
    
    @IBOutlet var redColorCircle: UIView!
    @IBOutlet var yellowColorCircle: UIView!
    @IBOutlet var greenColorCircle: UIView!
    
    @IBOutlet var boxOfGreenLight: UIView!
    @IBOutlet var boxOfYellowLight: UIView!
    @IBOutlet var boxOfRedLight: UIView!
    
    private var curentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStartLights()
        changeColorButton.setTitle("START", for: .normal)
        changeColorButton.layer.cornerRadius = changeColorButton.layer.frame.height / 3
    }
    
    private func setUpStartLights() {
        boxOfRedLight.layer.borderWidth = 5
        boxOfRedLight.layer.borderColor = UIColor.black.cgColor
        boxOfRedLight.layer.cornerRadius = 10
        boxOfYellowLight.layer.borderWidth = 5
        boxOfYellowLight.layer.borderColor = UIColor.black.cgColor
        boxOfYellowLight.layer.cornerRadius = 10
        boxOfGreenLight.layer.borderWidth = 5
        boxOfGreenLight.layer.borderColor = UIColor.black.cgColor
        boxOfGreenLight.layer.cornerRadius = 10
        
        redColorCircle.alpha = lightIsOff
        yellowColorCircle.alpha = lightIsOff
        greenColorCircle.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redColorCircle.layer.cornerRadius = redColorCircle.frame.height / 2
        yellowColorCircle.layer.cornerRadius = yellowColorCircle.frame.height / 2
        greenColorCircle.layer.cornerRadius = greenColorCircle.frame.height / 2
    }
    
    @IBAction func buttonPresed(_ sender: UIButton) {
        
        if changeColorButton.currentTitle == "START" {
            changeColorButton.setTitle("NEXT", for: .normal)
        }
        
        
        switch curentLight {
        case .red:
            greenColorCircle.alpha = lightIsOff
            redColorCircle.alpha = lightIsOn
            curentLight = .yellow
        case .yellow:
            redColorCircle.alpha = lightIsOff
            yellowColorCircle.alpha = lightIsOn
            curentLight = .green
        case .green:
            yellowColorCircle.alpha = lightIsOff
            greenColorCircle.alpha = lightIsOn
            curentLight = .red
        }
    }
}

extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
