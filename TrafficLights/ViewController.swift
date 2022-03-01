//
//  ViewController.swift
//  TrafficLights
//
//  Created by Aleksandr Kretov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var redLight: UIView!

    @IBOutlet weak var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lights = [redLight, yellowLight, greenLight]
        for light in lights {
            light?.layer.cornerRadius = (light?.frame.width)! / 2
            light?.alpha = 0.3
        }
        switchButton.layer.cornerRadius = 16
        switchButton.setTitle("START", for: .normal)
    }
    
    var index = 0



    @IBAction func switchButtonPressed(_ sender: Any) {
        switchButton.setTitle("NEXT", for: .normal)
        let lights = [redLight, yellowLight, greenLight]
        switch lights[index] {
        case redLight:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            index += 1
        case yellowLight:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            index += 1
        case greenLight:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            index = 0
        default: break
        }
    }
}

