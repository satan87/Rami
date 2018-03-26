//
//  DeckFunction.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-03-25.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation


func createDeck (numberOfPaquet p:Int , withJokers j:Bool ) -> [Card] {
    var cardsToReturn:[Card] = []
    for _ in 1...p {
     cardsToReturn.append(contentsOf: Deck(numberOfCard: DECK_SIZE.bigDeck, withJokers: j).getAllCards())
    }
    return cardsToReturn
}
