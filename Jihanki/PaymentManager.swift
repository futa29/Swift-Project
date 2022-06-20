//
//  PaymentManager.swift
//  Jihanki
//
//  Created by RPC322 on 2022/06/16.
//

import Foundation

class PaymentManager{
    var money = 300
    
    
    
    
    func Buy(price:Int) -> Int{
        if (self.money < price){
            return 000
        }else{
            self.money = self.money - price
            
            return self.money
        }
        
    }
}
