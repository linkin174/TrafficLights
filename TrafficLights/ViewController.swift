//
//  ViewController.swift
//  TrafficLights
//
//  Created by Aleksandr Kretov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!

    @IBOutlet var switchButton: UIButton!

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

    var counter = 0

    @IBAction func switchButtonPressed(_ sender: Any) {
        switchButton.setTitle("NEXT", for: .normal)
        let lights = [redLight, yellowLight, greenLight]
        switch lights[counter] {
        case redLight:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            counter = lights.index(after: counter)
        case yellowLight:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            counter = lights.index(after: counter)
        case greenLight:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            counter = lights.startIndex
        default: break
        }
    }
}
