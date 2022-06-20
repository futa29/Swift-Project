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
    var coffestock: Int = 2
    var pay = PaymentManager()
   
    
    func buyDrink(name: String)-> (name:String,balance: Int){
        self.name = name
        print(self.name)
        switch self.name{
        case "水":
            self.price = 80
            self.waterstock -= 1
            print("水を買いました")
            var balance = pay.Buy(price: self.price)
            return (name,balance)
        case "お茶":
            self.price = 100
            self.teastock -= 1
            print("お茶を買いました")
            var balance = pay.Buy(price: self.price)
            return (name,balance)
        case "コーヒー":
            
            self.price = 130
            self.coffestock -= 1
            print("コーヒーを買いました")
            var balance = pay.Buy(price: self.price)
            return (name,balance)
        default:
            var balance = pay.Buy(price: self.price)
            return (name,balance)
        }
        
    }
    
    func processStock(){
        
        
    }
    
   
}


