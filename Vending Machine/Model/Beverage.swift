//
//  Beverage.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct Beverage {
    var beverageName: String
    var price: Int
    var count: Int
    
    init(BeverageName: String, Price: Int, Count: Int){
        self.beverageName = BeverageName
        self.price = Price
        self.count = Count
    }
}
