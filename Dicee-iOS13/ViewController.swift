//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    var allTheDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    var countUp = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = allTheDice[leftDiceNumber]
        diceImageView2.image = allTheDice[rightDiceNumber]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        if (leftDiceNumber == 0) {
            countUp = true
        } else if (leftDiceNumber == 5) {
            countUp = false
        }
        
        switch countUp {
        case true:
            leftDiceNumber += 1
            rightDiceNumber -= 1
        default:
            leftDiceNumber -= 1
            rightDiceNumber += 1
        }
        
        diceImageView1.image = allTheDice[leftDiceNumber]
        diceImageView2.image = allTheDice[rightDiceNumber]
    }
    
}

