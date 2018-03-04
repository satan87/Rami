//
//  PlayerCardsInHand.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-17.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation

class playerCardInHand : Codable {
    
    var player:Player
    var cards:[Card]
    
    init(Player p:Player , listOfCards lc:[Card]){
        player = p
        cards = lc
    }
    
    
}
