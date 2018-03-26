//
//  Color.swift
//  Rami
//
//  Created by Nicolas Savoini on 2018-02-11.
//  Copyright © 2018 Nicolas Savoini. All rights reserved.
//

import Foundation


class Color : Codable {
    var name:String=""
    
    init(color:String){
        name = color
    }
    
    
    
    static func == ( c1: Color , c2: Color ) -> Bool {
        return c1.name == c2.name
    }
    static func != ( c1: Color , c2: Color ) -> Bool {
        return c1.name != c2.name
    }
    
}
