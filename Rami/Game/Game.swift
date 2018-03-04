//
//  Game.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-17.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation
import GameplayKit


class GameRami : Codable {
    
    private var listOfPlayers:[Player] = []
    private var deck:[Card] = []
    
    private var whichPlayerShouldPlay:Int = 0
    
    private var cardInHandForPlayer:[playerCardInHand] = []
    
    
    init(listOfPlayers p:[Player]){
        listOfPlayers = p
        startNewGame()
    }
    
    private func startNewGame(){
        prepareDecks()
        shuffleDecks()
        distributeCardToPlayer()
    }
    
    private func prepareDecks(){
        deck.append(contentsOf: Deck(numberOfCard: DECK_SIZE.bigDeck, withJokers: true).getAllCards())
        deck.append(contentsOf: Deck(numberOfCard: DECK_SIZE.bigDeck, withJokers: true).getAllCards())
    }
    
    private func distributeCardToPlayer(){
        for p in listOfPlayers{
            var cardsToDistributeToPlayer:[Card] = []
            for _ in 0...14 {
                cardsToDistributeToPlayer.append(deck[0])
                deck.remove(at: 0)
            }
            cardInHandForPlayer.append(playerCardInHand(Player: p, listOfCards: cardsToDistributeToPlayer))
        }
    }
    
    private func shuffleDecks(){
        deck = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: deck) as! [Card]
    }
    
    func getNumberOfPlayer() -> Int {
        return listOfPlayers.count
    }
    
    func getAllCardsFromPioche() -> [Card] {
        return deck;
    }
    
    func getCardsInHand(forPlayer p:Player) -> [Card] {
        return (cardInHandForPlayer.filter{$0.player === p}.first?.cards)!
    }
    
    
}



