//
//  Player.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-04.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation


class Player : Codable {
    
    var name:String = ""
    var type:String = TYPE_PLAYER_HUMAIN
    
    init(){
        name = "Player"
    }
    
    init(nameOfThePlayer n:String){
        name = n
    }
    
    
}




