//
//  Deck.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-11.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation


class Deck : Codable {
    
    private var cards:[Card] = []
    
    init ( numberOfCard n:DECK_SIZE , withJokers j:Bool){
        if ( n == DECK_SIZE.smallDeck ){
            add32Cards()
        }
        if ( n == DECK_SIZE.bigDeck ){
            add54Cards()
        }
        if ( j ) {
            addJokers()
        }
    }
    
    private func add32Cards(){
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_ACE))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_KING))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_QUEEN))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_JACK))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_TEN))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_NINE))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_EIGHT))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_SEVEN))
        
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_ACE))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_KING))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_QUEEN))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_JACK))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_TEN))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_NINE))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_EIGHT))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_SEVEN))
        
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_ACE))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_KING))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_QUEEN))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_JACK))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_TEN))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_NINE))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_EIGHT))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_SEVEN))
        
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_ACE))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_KING))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_QUEEN))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_JACK))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_TEN))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_NINE))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_EIGHT))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_SEVEN))
    }
    
    private func add54Cards(){
        add32Cards()
        
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_SIX))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_FIVE))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_FOUR))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_THREE))
        cards.append(Card(cardColor: COLOR_DIAMONDS, cardSymbol: CARD_TWO))
        
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_SIX))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_FIVE))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_FOUR))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_THREE))
        cards.append(Card(cardColor: COLOR_HEARTS, cardSymbol: CARD_TWO))
        
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_SIX))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_FIVE))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_FOUR))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_THREE))
        cards.append(Card(cardColor: COLOR_SPADES, cardSymbol: CARD_TWO))
        
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_SIX))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_FIVE))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_FOUR))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_THREE))
        cards.append(Card(cardColor: COLOR_CLUBS, cardSymbol: CARD_TWO))
    }
    
    private func addJokers(){
        cards.append(Card(cardColor: COLOR_BLANK, cardSymbol: CARD_JOCKER))
        cards.append(Card(cardColor: COLOR_BLANK, cardSymbol: CARD_JOCKER))
    }
    
    public func getAllCards() -> [Card]{
        return cards
    }
    
    
}
