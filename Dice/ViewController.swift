//
//  ViewController.swift
//  Dice
//
//  Created by bagasstb on 27/02/19.
//  Copyright © 2019 xProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func rollPressed(_ sender: UIButton) {
       rollDice()
    }
    
    func rollDice() {
        randomDice1 = getRandom()
        randomDice2 = getRandom()
        
        dice1.image = getDiceImage(index: randomDice1)
        dice2.image = getDiceImage(index: randomDice2)
    }
    
    func getRandom() -> Int {
        return Int.random(in: 0 ... 5)
    }
    
    func getDiceImage(index: Int) -> UIImage? {
        return UIImage(named: diceArray[index])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

