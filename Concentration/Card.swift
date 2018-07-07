//
//  Card.swift
//  Concentration
//
//  Created by Ujjwal Batra on 06/07/18.
//  Copyright © 2018 Ujjwal Batra. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
       identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
