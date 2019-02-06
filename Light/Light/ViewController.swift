//
//  ViewController.swift
//  Light
//
//  Created by student3 on 1/26/19.
//  Copyright © 2019 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let lightON = arc4random_uniform(6)

        if lightON == 1 {
            view.backgroundColor = .green
            lightButton.setTitle("Green", for: .normal)
            lightButton.backgroundColor = .yellow
        } else if lightON == 2 {
                view.backgroundColor = .brown
                lightButton.setTitle("Brown", for: .normal)
                lightButton.backgroundColor = .white
        } else if lightON == 3 {
            view.backgroundColor = .white
            lightButton.setTitle("White", for: .normal)
            lightButton.backgroundColor = .blue
        } else if lightON == 4 {
            view.backgroundColor = .yellow
            lightButton.setTitle("Yellow", for: .normal)
            lightButton.backgroundColor = .red
        
        } else if lightON == 5 {
            view.backgroundColor = .black
            lightButton.setTitle("Black", for: .normal)
            lightButton.backgroundColor = .white
        } else {
            view.backgroundColor = .red
            lightButton.setTitle("WARNING! Enough Touching ME", for:
                .normal)
            lightButton.backgroundColor = .white
        }
        
    }
  
}
