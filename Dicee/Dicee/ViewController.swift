//
//  ViewController.swift
//  Dicee
//
//  Created by student3 on 1/16/19.
//  Copyright © 2019 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5","dice6"]

    @IBOutlet weak var diceImageView1: UIImageView! //Two imges on the screen that will change its apperance
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
    }
    // what should happen after button pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0...5) //swift 4 new way of arcrandom.uniform()
        
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    } //UIImage is data type, then we use a palce holder as array. that will take any random image from the array
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

