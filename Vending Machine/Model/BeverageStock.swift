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
    
    var beverages:Array = [Beverage(beverageName: "Cola", price: 1000, count: 20),
                           Beverage(beverageName: "Fanta", price: 1000, count: 20),
                           Beverage(beverageName: "Cider", price: 1200, count: 20),
                           Beverage(beverageName: "Ambasa", price: 1200, count: 20),
                           Beverage(beverageName: "SikHye", price: 1400, count: 20),
                           Beverage(beverageName: "PowerPoint", price: 3000, count: 20),
                           Beverage(beverageName: "Excel", price: 9000, count: 20),
                           Beverage(beverageName: "Random", price: 2000, count: 0),]
   
    //beverageID를 Beverage에서 구현할 필요가 없었음.
    func getBeverageID(beverageName: String) -> Int {
        var beverageId:Int = 0
        for i in 0...beverages.count - 1 {
            if beverageName == beverages[i].beverageName {
                beverageId = i
                break;
            }
        }
        return beverageId
    }
    
    mutating func stockMinus(beverageID: Int) {
        beverages[beverageID].count -= 1
    }
    
    func stockCheck(beverageID: Int) {
        print("기기에 \(beverages[beverageID].beverageName)(은)는 \(beverages[beverageID].count)개 남았습니다.")
    }

    mutating func moneyMinus(Amount:Int) {
        initialMoney -= Amount
    }
    
    mutating func moneyPlus(Amount:Int){
        initialMoney += Amount
    }
}
