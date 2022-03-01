//
//  ViewController.swift
//  TrafficLights
//
//  Created by Aleksandr Kretov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var redLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lights: [UIView] = [redLight, yellowLight, greenLight]
        for light in lights {
            light.layer.cornerRadius = light.frame.width / 2
            light.alpha = 0.3
        }
        
        
        
    }

    @IBAction func switchLight() {
    }
    
}

