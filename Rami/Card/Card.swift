//
//  Card.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-11.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation



class Card : Codable {
    
    var color:Color
    var symbol:Symbol
    
    init( cardColor c:Color , cardSymbol s:Symbol ){
        color = c
        symbol = s
    }
    
    
    func getCardName() -> String {
        return "\(symbol.name) of \(color.name)"
    }
    
    
    
}
