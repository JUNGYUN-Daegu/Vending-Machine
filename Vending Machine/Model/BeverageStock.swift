//
//  BeverageStock.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import Foundation

struct BeverageStock {
    
    var beverage1 = Beverage(BeverageName: "Cola", Price: 1000, Count: 20)
    var beverage2 = Beverage(BeverageName: "Fanta", Price: 1000, Count: 20)
    var beverage3 = Beverage(BeverageName: "Cider", Price: 1200, Count: 20)
    var beverage4 = Beverage(BeverageName: "Ambasa", Price: 1200, Count: 20)
    var beverage5 = Beverage(BeverageName: "SikHye", Price: 1400, Count: 20)
    var beverage6 = Beverage(BeverageName: "PowerPoint",Price: 3000, Count: 20)
    var beverage7 = Beverage(BeverageName: "Excel",Price: 9000, Count: 20)
    var beverage8 = Beverage(BeverageName: "Access", Price: 9000, Count: 20)
 
    func stockCheck() {
        print("\(beverage1.beverageName)\(beverage1.count)")
        print("\(beverage2.beverageName)\(beverage1.count)")
        print("\(beverage3.beverageName)\(beverage1.count)")
        print("\(beverage4.beverageName)\(beverage1.count)")
        print("\(beverage5.beverageName)\(beverage1.count)")
        print("\(beverage6.beverageName)\(beverage1.count)")
        print("\(beverage7.beverageName)\(beverage1.count)")
        print("\(beverage8.beverageName)\(beverage1.count)")
    }
}
