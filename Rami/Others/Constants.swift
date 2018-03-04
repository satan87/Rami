//
//  Constants.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-04.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation

//PLAYER
let TYPE_PLAYER_HUMAIN = "Humain"
let TYPE_PLAYER_COMPUTER = "Computer"

let MINIMAL_PLAYER_NAME_LENGTH = 3

//DECK
let NUMBER_OF_CARD_PER_DECK = 52
let NUMBER_OF_JOCKER_PER_DECK = 2
let NUMBER_OF_CARD_WITH_JOCKER_PER_DECK = 54

enum DECK_SIZE : Int {
    case smallDeck = 32
    case bigDeck = 54
}

// COLOR
let COLOR_HEARTS = Color(color: NSLocalizedString("COLOR_HEARTS", comment: "Hearts / Coeurs"))
let COLOR_DIAMONDS = Color(color:NSLocalizedString("COLOR_DIAMONDS", comment: "Diamonds / Carreaux"))
let COLOR_SPADES = Color(color:NSLocalizedString("COLOR_SPADES", comment: "Spades / Piques"))
let COLOR_CLUBS = Color(color:NSLocalizedString("COLOR_CLUBS", comment: "Clubs / Trefles"))
let COLOR_BLANK = Color(color:NSLocalizedString("COLOR_BLANK", comment: "Blank / Blanche"))

// VALUE
let CARD_ACE = Symbol(symbol: NSLocalizedString("CARD_ACE", comment: "Ace / As"))
let CARD_KING = Symbol(symbol: NSLocalizedString("CARD_KING", comment: "King / Roi"))
let CARD_QUEEN = Symbol(symbol: NSLocalizedString("CARD_QUEEN", comment: "Queen / Reine"))
let CARD_JACK = Symbol(symbol: NSLocalizedString("CARD_JACK", comment: "Jack / Valet"))
let CARD_TEN = Symbol(symbol: NSLocalizedString("CARD_TEN", comment: "Ten / Dix"))
let CARD_NINE = Symbol(symbol: NSLocalizedString("CARD_NINE", comment: "Nine / Neuf"))
let CARD_EIGHT = Symbol(symbol: NSLocalizedString("CARD_EIGHT", comment: "Eight / Huit"))
let CARD_SEVEN = Symbol(symbol: NSLocalizedString("CARD_SEVEN", comment: "Seven / Sept"))
let CARD_SIX = Symbol(symbol: NSLocalizedString("CARD_SIX", comment: "Six / Six"))
let CARD_FIVE = Symbol(symbol: NSLocalizedString("CARD_FIVE", comment: "Five / Cinq"))
let CARD_FOUR = Symbol(symbol: NSLocalizedString("CARD_FOUR", comment: "Four / Quatre"))
let CARD_THREE = Symbol(symbol: NSLocalizedString("CARD_THREE", comment: "Three / Trois"))
let CARD_TWO = Symbol(symbol: NSLocalizedString("CARD_TWO", comment: "Two / Deux"))

let CARD_JOCKER = Symbol(symbol: NSLocalizedString("CARD_JOCKER", comment: "Jocker / Joker"))

