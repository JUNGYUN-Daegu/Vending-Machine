//
//  ViewController.swift
//  Vending Machine
//
//  Created by 조중윤 on 2020/07/30.
//  Copyright © 2020 Jojung-yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyRecievedLbl: UILabel!
    @IBOutlet weak var changeLbl: UILabel!
    @IBOutlet weak var selectBtn1: UIButton!
    @IBOutlet weak var selectBtn2: UIButton!
    @IBOutlet weak var selectBtn3: UIButton!
    @IBOutlet weak var selectBtn4: UIButton!
    @IBOutlet weak var selectBtn5: UIButton!
    @IBOutlet weak var selectBtn6: UIButton!
    @IBOutlet weak var selectBtn7: UIButton!
    @IBOutlet weak var selectBtn8: UIButton!
    
    var beverageStock = BeverageStock()
    var moneyInserted:Int = 0
    var moneyReimburse:Int = 0
    var totalPriceAmount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beverageStock.stockCheck()
        selectBtn1.setTitle("\(beverageStock.beverages[1].beverageName):\(beverageStock.beverages[1].price)", for: .normal)
        selectBtn2.setTitle("\(beverageStock.beverages[2].beverageName):\(beverageStock.beverages[2].price)", for: .normal)
        selectBtn3.setTitle("\(beverageStock.beverages[3].beverageName):\(beverageStock.beverages[3].price)", for: .normal)
        selectBtn4.setTitle("\(beverageStock.beverages[4].beverageName):\(beverageStock.beverages[4].price)", for: .normal)
        selectBtn5.setTitle("\(beverageStock.beverages[5].beverageName):\(beverageStock.beverages[5].price)", for: .normal)
        selectBtn6.setTitle("\(beverageStock.beverages[6].beverageName):\(beverageStock.beverages[6].price)", for: .normal)
        selectBtn7.setTitle("\(beverageStock.beverages[7].beverageName):\(beverageStock.beverages[7].price)", for: .normal)
        selectBtn8.setTitle("랜덤", for: .normal)
    
    }
    
    @IBAction func moneyRecieved(_ sender: Any) {
        moneyInserted = moneyInserted + 1000
        beverageStock.moneyPlus(Amount: 1000)
        print("기기안에 현금이 \(beverageStock.initialMoney)원 남았습니다.")
        moneyRecievedLbl.text = String(moneyInserted)
    }

    @IBAction func claimChange(_ sender: Any) {
       var moneyDifference = moneyInserted - totalPriceAmount
         print("\(moneyDifference)원이 거스름돈으로 나왔습니다.")
         beverageStock.moneyMinus(Amount: moneyDifference)
         print("기기안에 현금이 \(beverageStock.initialMoney)원 남았습니다.")
        moneyRecievedLbl.text = "0"
        changeLbl.text = "0"
        moneyInserted = 0
        totalPriceAmount = 0
    }
    
    @IBAction func beverageSelected(_ sender: UIButton) {
      
        let nameAndPrice = sender.currentTitle!.split(separator: ":")
        let price = Int(nameAndPrice[1])
        //투입 돈보다 큰 금액 쓰지 못하는 기능
        if moneyInserted - totalPriceAmount >= price! {
            
            totalPriceAmount = totalPriceAmount + price!
            changeLbl.text = String(totalPriceAmount)
             print("\(nameAndPrice[0])이(가) 나왔습니다")
            }
        }
    
}

