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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func rollPressed(_ sender: UIButton) {
        randomDice1 = getRandom()
        randomDice2 = getRandom()
        
    }
    
    func getRandom() -> Int {
        return Int.random(in: 1 ... 6)
    }
}

