//
//  Symbol.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-11.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation

class Symbol : Codable {
    var name:String=""
    
    init(symbol:String){
        name = symbol
    }
}
