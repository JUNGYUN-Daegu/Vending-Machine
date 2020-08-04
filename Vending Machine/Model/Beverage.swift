//
//  Beverage.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct Beverage {
    let beverageName:String
    let price:Int
    var count:Int
    
    init(beverageName:String, price:Int, count:Int){
        self.beverageName = beverageName
        self.price = price
        self.count = count
    }
}
