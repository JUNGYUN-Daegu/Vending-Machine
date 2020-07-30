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
    
    let beverageStock = BeverageStock()
    let moneyStock = MoneyStock()
    var moneyInserted:Int = 0
    var moneyReimburse:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beverageStock.stockCheck()
        selectBtn1.setTitle("\(beverageStock.beverage1.beverageName):\(beverageStock.beverage1.count)", for: .normal)
        selectBtn2.setTitle("\(beverageStock.beverage2.beverageName):\(beverageStock.beverage2.count)", for: .normal)
        selectBtn3.setTitle("\(beverageStock.beverage3.beverageName):\(beverageStock.beverage3.count)", for: .normal)
        selectBtn4.setTitle("\(beverageStock.beverage4.beverageName):\(beverageStock.beverage4.count)", for: .normal)
        selectBtn5.setTitle("\(beverageStock.beverage5.beverageName):\(beverageStock.beverage5.count)", for: .normal)
        selectBtn6.setTitle("\(beverageStock.beverage6.beverageName):\(beverageStock.beverage6.count)", for: .normal)
        selectBtn7.setTitle("\(beverageStock.beverage7.beverageName):\(beverageStock.beverage7.count)", for: .normal)
        selectBtn8.setTitle("\(beverageStock.beverage8.beverageName):\(beverageStock.beverage8.count)", for: .normal)
    
    }
    
    @IBAction func moneyRecieved(_ sender: Any) {
        moneyInserted = moneyInserted + 1000
        moneyRecievedLbl.text = String(moneyInserted)
    }

    @IBAction func claimChange(_ sender: Any) {
    }
    
    
}

