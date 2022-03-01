//
//  ViewController.swift
//  TrafficLights
//
//  Created by Aleksandr Kretov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var trafficLights: [UIView]!
    @IBOutlet var switchButton: UIButton!
   
    //MARK: Private properties
    private var currentPosition = 0
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    //MARK: Life Cycle Methods
    override func viewDidLoad() {
        
        super.viewDidLoad()
        for light in trafficLights {
            light.layer.cornerRadius = light.frame.height / 2
            light.alpha = lightOff
        }
        switchButton.layer.cornerRadius = 16
        switchButton.setTitle("START", for: .normal)
    }
    
    //MARK: IB Actions
    @IBAction func switchButtonPressed(_ sender: Any) {

        for light in trafficLights {
            light.alpha = lightOff
        }
        
        if switchButton.titleLabel?.text == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentPosition {
        case 0:
            trafficLights[currentPosition].alpha = lightOn
            currentPosition += 1
        case 1:
            trafficLights[currentPosition].alpha = lightOn
            currentPosition += 1
        case 2:
            trafficLights[currentPosition].alpha = lightOn
            currentPosition = trafficLights.startIndex
        default: break
        }
    }
}
