//
//  BeverageStock.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct BeverageStock {
    var initialMoney:Int = 1000000
    
    var beverages:Array = [Beverage(beverageID: 0, beverageName: "Cola", price: 1000, count: 20),
                           Beverage(beverageID: 1, beverageName: "Fanta", price: 1000, count: 20),
                           Beverage(beverageID: 2, beverageName: "Cider", price: 1200, count: 20),
                           Beverage(beverageID: 3, beverageName: "Ambasa", price: 1200, count: 20),
                           Beverage(beverageID: 4, beverageName: "SikHye", price: 1400, count: 20),
                           Beverage(beverageID: 5, beverageName: "PowerPoint", price: 3000, count: 20),
                           Beverage(beverageID: 6, beverageName: "Excel", price: 9000, count: 20),
                           Beverage(beverageID: 7, beverageName: "Access", price: 9000, count: 20),
                           ]
   
    func getBeverageID(beverageName: String) -> Int {
        var beverageID:Int = 0
        for i in 0...beverages.count - 1 {
            if beverageName == beverages[i].beverageName {
                beverageID = beverages[i].beverageID
            }
        }
        return beverageID
    }
    
    mutating func stockMinus(beverageID: Int) {
        beverages[beverageID].count -= 1
    }
    
    func stockCheck(beverageID: Int) {
        print("기기에 \(beverages[beverageID].beverageName)는 \(beverages[beverageID].count)개 남았습니다.")
    }

    mutating func moneyMinus(Amount:Int) {
        initialMoney -= Amount
    }
    
    mutating func moneyPlus(Amount:Int){
        initialMoney += Amount
    }
}
