//
//  ViewController.swift
//  Concentration
//
//  Created by Ujjwal Batra on 27/06/18.
//  Copyright © 2018 Ujjwal Batra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    var emojiChoices = ["🎃","🎃","👻","👻"]
    
    var flipCount = 0{
        didSet {//this is called property observer. this is going to be changed everytime value of the property changes
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
   
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.index(of: sender)!
        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
    }
    
 
    func flipCard( withEmoji emoji: String, on button: UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

