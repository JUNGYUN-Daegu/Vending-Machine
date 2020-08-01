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
    var totalPriceAmount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewComponents()
    }
    
    @IBAction func moneyRecieved(_ sender: Any) {
        moneyInserted = moneyInserted + 1000
        beverageStock.moneyPlus(Amount: 1000)
        print("기기안에 현금이 \(beverageStock.initialMoney)원 남았습니다.")
        moneyRecievedLbl.text = String(moneyInserted)
    }

    @IBAction func claimChange(_ sender: Any) {
         let moneyDifference = moneyInserted - totalPriceAmount
         print("\(moneyDifference)원이 거스름돈으로 나왔습니다.")
         beverageStock.moneyMinus(Amount: moneyDifference)
         print("기기안에 현금이 \(beverageStock.initialMoney)원 남았습니다.")
         moneyRecievedLbl.text = "0"
         changeLbl.text = "0"
         moneyInserted = 0
         totalPriceAmount = 0
    }
    
    @IBAction func beverageSelected(_ sender: UIButton) {
        //옵셔널 바인딩적용
        // let name과 let price를 모델에서 뽑는 법 고민해보기
        if let nameAndPrice = sender.currentTitle?.split(separator: ":") {
            let name:String = String(nameAndPrice[0])
            let price = Int(nameAndPrice[1])
            let beverageId = beverageStock.getBeverageID(beverageName: name)
              //투입 돈보다 큰 금액 쓰지 못하는 기능
              //stock이 없으면 '품절항목'이라 뜨기
            if moneyInserted - totalPriceAmount >= price! {
                    if beverageStock.beverages[beverageId].count < 1 {
                          print("품절항목입니다.")
                      } else if beverageStock.beverages[beverageId].count >= 1 {
                          totalPriceAmount = totalPriceAmount + price!
                          changeLbl.text = String(totalPriceAmount)
                          print("\(nameAndPrice[0])이(가) 나왔습니다")
                          beverageStock.stockMinus(beverageID:beverageId)
                          beverageStock.stockCheck(beverageID:beverageId)
                        }
                    }
            }
    }
    
    func setupViewComponents() {
        selectBtn1.setTitle("\(beverageStock.beverages[0].beverageName):\(beverageStock.beverages[0].price)", for: .normal)
        selectBtn2.setTitle("\(beverageStock.beverages[1].beverageName):\(beverageStock.beverages[1].price)", for: .normal)
        selectBtn3.setTitle("\(beverageStock.beverages[2].beverageName):\(beverageStock.beverages[2].price)", for: .normal)
        selectBtn4.setTitle("\(beverageStock.beverages[3].beverageName):\(beverageStock.beverages[3].price)", for: .normal)
        selectBtn5.setTitle("\(beverageStock.beverages[4].beverageName):\(beverageStock.beverages[4].price)", for: .normal)
        selectBtn6.setTitle("\(beverageStock.beverages[5].beverageName):\(beverageStock.beverages[5].price)", for: .normal)
        selectBtn7.setTitle("\(beverageStock.beverages[6].beverageName):\(beverageStock.beverages[6].price)", for: .normal)
        selectBtn8.setTitle("랜덤:2000", for: .normal)
    }
}

