//
//  Drink.swift
//  Jihanki
//
//  Created by RPC322 on 2022/06/16.
//

import Foundation

class Drink{
    var name: String = ""
    var price: Int = 0
    var waterstock: Int = 2
    var teastock: Int = 2
    var coffeestock: Int = 2
    var pay = PaymentManager()
   
    
    func buyDrink(name: String)-> (name:String,balance: Int,stock:Int){
        self.name = name
        switch self.name{
        case "水":
            self.price = 80
            if (self.waterstock == 0){
                return ("error",000,001)
            }
            self.waterstock -= 1
            
            let balance = pay.Buy(price: self.price)
            let stock = self.waterstock
            return (name,balance,stock)
            
        case "お茶":
            self.price = 100
            if (self.teastock == 0){
                return ("error",000,001)
            }
            self.teastock -= 1
            let balance = pay.Buy(price: self.price)
            let stock = self.teastock
            return (name,balance,stock)
            
            
        case "コーヒー":
            self.price = 130
            if (self.coffeestock == 0){
                return ("error",000,001)
            }
            self.coffeestock -= 1
            let balance = pay.Buy(price: self.price)
            let stock = self.coffeestock
            return (name,balance,stock)
            
        default:
            let balance = pay.Buy(price: self.price)
            let stock = self.waterstock
            return (name,balance,stock)
        }
        
    }
    
    func processStock(stock: Int){
       
        
    }
    
   
}


