//
//  Beverage.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct Beverage {
    let beverageID: Int
    let beverageName:String
    let price:Int
    var count:Int
    
    init(beverageID: Int, beverageName:String, price:Int, count:Int){
        self.beverageID = beverageID
        self.beverageName = beverageName
        self.price = price
        self.count = count
    }
}
