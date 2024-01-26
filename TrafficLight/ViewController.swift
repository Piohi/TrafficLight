//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton Godunov on 26.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var changeColorButton: UIButton!
    var numberOfLight: Int = 0
    @IBOutlet var redColorCircle: UIView!
    @IBOutlet var yellowColorCircle: UIView!
    @IBOutlet var greenColorCircle: UIView!
    @IBOutlet var boxOfLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStartLights()
        changeColorButton.setTitle("START", for: .normal)

        
        // Do any additional setup after loading the view.
    }
    func setUpStartLights() {
        boxOfLight.layer.cornerRadius = boxOfLight.frame.width / 3
        redColorCircle.layer.cornerRadius = 50
        print(redColorCircle.frame.height, redColorCircle.frame.width)
        print(redColorCircle.layer.cornerRadius)
        yellowColorCircle.layer.cornerRadius = yellowColorCircle.bounds.height / 2
        greenColorCircle.layer.cornerRadius = greenColorCircle.frame.height / 2
        redColorCircle.alpha = 0.2
        yellowColorCircle.alpha = 0.2
        greenColorCircle.alpha = 0.2
    }
    
    @IBAction func buttonPresed2(_ sender: UIButton) {
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
//    @objc func buttonPresed() {
//        changeColorButton.setTitle("NEXT", for: .normal)
//        if numberOfLight == 3 {
//            numberOfLight = 0
//        }
//        switch numberOfLight {
//        case 0: 
//            redColorCircle.alpha = 1
//            yellowColorCircle.alpha = 0.2
//            greenColorCircle.alpha = 0.2
//            numberOfLight += 1
//        case 1:
//            redColorCircle.alpha = 0.2
//            yellowColorCircle.alpha = 1
//            greenColorCircle.alpha = 0.2
//            numberOfLight += 1
//        case 2:
//            redColorCircle.alpha = 0.2
//            yellowColorCircle.alpha = 0.2
//            greenColorCircle.alpha = 1
//            numberOfLight += 1
//        default:
//            redColorCircle.alpha = 0.2
//            redColorCircle.alpha = 0.2
//            redColorCircle.alpha = 0.2
//        }
//    }
    
}


