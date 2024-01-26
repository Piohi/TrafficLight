//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton Godunov on 26.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var changeColorButton: UIButton!
    @IBOutlet var redColorCircle: UIView!
    @IBOutlet var yellowColorCircle: UIView!
    @IBOutlet var greenColorCircle: UIView!
    @IBOutlet var boxOfLight: UIView!
    var numberOfLight: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStartLights()
        changeColorButton.setTitle("START", for: .normal)
    }
    
    func setUpStartLights() {
        boxOfLight.layer.cornerRadius = boxOfLight.frame.width / 4
        redColorCircle.frame.size.height = UIScreen.main.bounds.height / 6.67
        redColorCircle.frame.size.width = redColorCircle.frame.size.height
        redColorCircle.layer.cornerRadius = redColorCircle.frame.height / 2
        redColorCircle.alpha = 0.2
        yellowColorCircle.frame.size.height = UIScreen.main.bounds.height / 6.67
        yellowColorCircle.frame.size.width = yellowColorCircle.frame.size.height
        yellowColorCircle.layer.cornerRadius = yellowColorCircle.frame.height / 2
        yellowColorCircle.alpha = 0.2
        greenColorCircle.frame.size.height = UIScreen.main.bounds.height / 6.67
        greenColorCircle.frame.size.width = greenColorCircle.frame.size.height
        greenColorCircle.layer.cornerRadius = greenColorCircle.frame.height / 2
        greenColorCircle.alpha = 0.2
    }
    
    @IBAction func buttonPresed(_ sender: UIButton) {
        changeColorButton.setTitle("NEXT", for: .normal)
        if numberOfLight == 3 {
            numberOfLight = 0
        }
        switch numberOfLight {
        case 0:
            redColorCircle.alpha = 1
            yellowColorCircle.alpha = 0.2
            greenColorCircle.alpha = 0.2
            numberOfLight += 1
        case 1:
            redColorCircle.alpha = 0.2
            yellowColorCircle.alpha = 1
            greenColorCircle.alpha = 0.2
            numberOfLight += 1
        case 2:
            redColorCircle.alpha = 0.2
            yellowColorCircle.alpha = 0.2
            greenColorCircle.alpha = 1
            numberOfLight += 1
        default:
            redColorCircle.alpha = 0.2
            redColorCircle.alpha = 0.2
            redColorCircle.alpha = 0.2
        }
    }
}


