//
//  Pet.swift
//  Week3LearnToiOS
//
//  Created by Leanne McGuinness on 29/05/2018.
//  Copyright © 2018 Leanne McGuinness. All rights reserved.
//

import Foundation


struct Pet {
    var name: String
    var type: String
    var age: Int
    //var currency: String
    
    init(name: String, type: String, age:Int) {
        self.name = name
        self.type = type
        self.age = age
    }
    
//    enum Currency: String {
//        case GPB: "£"
//    }
}
