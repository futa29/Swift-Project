//
//  PaymentManager.swift
//  Jihanki
//
//  Created by RPC322 on 2022/06/16.
//

import Foundation

class PaymentManager{
    var money = 1000
    
    
    
    
    func Buy(price:Int) -> Int{
        self.money = self.money - price
        print("\(self.money)円です")
        return self.money
    }
}
