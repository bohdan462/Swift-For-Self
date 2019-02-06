//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by student3 on 1/17/19.
//  Copyright © 2019 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var magicBall: UIImageView!
   
        func newBallImage(){
            randomBallNumber = Int (arc4random_uniform(4))
            magicBall.image = UIImage(named: ballArray [randomBallNumber])
            
            
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }
    @IBAction func askButton(_ sender: Any) {
        
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

