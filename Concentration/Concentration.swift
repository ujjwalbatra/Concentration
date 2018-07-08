//
//  Concentration.swift
//  Concentration
//
//  Created by Ujjwal Batra on 06/07/18.
//  Copyright © 2018 Ujjwal Batra. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard : Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[index].identifier == cards[matchIndex].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        cards = shuffled()
    }
    
    func shuffled() -> [Card] {
        var shuffledCards = [Card]()
       
        for index in cards.indices {
            let randomIndex = Int(arc4random_uniform(UInt32(cards.count - 1)))
            shuffledCards.insert(cards.remove(at: randomIndex), at: index)
        }
        return shuffledCards
    }
}
