//
//  RamiTests.swift
//  RamiTests
//
//  Created by Nicolas Savoini on 2018-02-04.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import XCTest
@testable import Rami

class RamiTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    //Player
    func testPlayerCreationName(){
        let p:Player = Player();
        XCTAssert(p.name == "Player")
    }
    func testPlayerCreationType(){
        let p:Player = Player();
        XCTAssert(p.type == TYPE_PLAYER_HUMAIN)
    }
    
    //DECK
    func testCreateDeck32(){
        let d = Deck(numberOfCard: DECK_SIZE.smallDeck, withJokers: false)
        XCTAssert(d.getAllCards().count == 32)
        let d1 = Deck(numberOfCard: DECK_SIZE.smallDeck, withJokers: true)
        XCTAssert(d1.getAllCards().count == 34)
    }
    func testCreateDeck54(){
        let d = Deck(numberOfCard: DECK_SIZE.bigDeck, withJokers: false)
        XCTAssert(d.getAllCards().count == 52)
        let d1 = Deck(numberOfCard: DECK_SIZE.bigDeck, withJokers: true)
        XCTAssert(d1.getAllCards().count == 54)
    }
    
    //GAME
    func testCreateGameNumberOfPlayer(){
        let players:[Player] = createListOfPlayer(numberOfPlayer: 2)
        let g:GameRami = GameRami(listOfPlayers: players)
        
        XCTAssert(g.getNumberOfPlayer() == 2)
    }
    
    private func createListOfPlayer(numberOfPlayer nbp:Int) -> [Player]{
        var p:[Player] = []
        for i in 1...nbp {
           p.append(Player(nameOfThePlayer: "Player \(i)"))
        }
        return p
    }
    
    func testCreateGameNumberOfCard(){
        let g:GameRami = GameRami(listOfPlayers: createListOfPlayer(numberOfPlayer: 2))
        XCTAssert(g.getAllCardsFromPioche().count == 108 )
    }
    
    func testCreateGameNumberOfjocker(){
        let g:GameRami = GameRami(listOfPlayers: createListOfPlayer(numberOfPlayer: 4))
        XCTAssert(g.getAllCardsFromPioche().filter{ $0.symbol === CARD_JOCKER }.count == 4 );
    }
    
    func testShufflingCardForGame(){
        let g:GameRami = GameRami(listOfPlayers: createListOfPlayer(numberOfPlayer: 4))
        print ( g.getAllCardsFromPioche()[12].getCardName() )
        print( g.getAllCardsFromPioche()[13].getCardName() )
        print( g.getAllCardsFromPioche()[14].getCardName() )
        print( g.getAllCardsFromPioche()[15].getCardName() )
        XCTAssert(true)
    }
    
    
    
    
    
    
}
