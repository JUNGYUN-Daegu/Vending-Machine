//
//  BeverageStock.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct BeverageStock {
    
    var initialMoney = 1000000
    var basicCount = 20
    
    var beverages = [Beverage(BeverageName: "Cola", Price: 1000, Count: 20),
                     Beverage(BeverageName: "Fanta", Price: 1000, Count: 20),
                     Beverage(BeverageName: "Cider", Price: 1200, Count: 20),
                     Beverage(BeverageName: "Ambasa", Price: 1200, Count: 20),
                     Beverage(BeverageName: "SikHye", Price: 1400, Count: 20),
                     Beverage(BeverageName: "PowerPoint",Price: 3000, Count: 20),
                     Beverage(BeverageName: "Excel",Price: 9000, Count: 20),
                     Beverage(BeverageName: "Access", Price: 9000, Count: 20),
                    ]
 
    func stockCheck() {
        for i in 1...7 {
            print("\(beverages[i].beverageName)는 \(beverages[i].count)개 남았습니다.")
        }
    }
    mutating func moneyMinus(Amount: Int) {
        initialMoney -= Amount
    }
    mutating func moneyPlus(Amount: Int){
        initialMoney += Amount
    }
}
