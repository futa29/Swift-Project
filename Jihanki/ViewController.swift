//
//  ViewController.swift
//  Jihanki
//
//  Created by RPC322 on 2022/06/16.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webview = WKWebView()
    var drink = Drink()
    
    var result: (name:String?,balance:Int?)
    
    
    var img: UIImage?
    
    var myMoney = 1000
    
    @IBOutlet weak var money: UILabel!
    
    @IBOutlet weak var waterImage: UIImageView!
    
    @IBOutlet weak var teaImage: UIImageView!
    
    @IBOutlet weak var coffeeImage: UIImageView!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let _ = result.balance{
            money.text = "所持金 \(result.balance!)円"
        } else {
            money.text = "所持金 \(myMoney)円"
        }
        
    }
    
    
    
    @IBAction func waterButton(_ sender: Any) {
        result = drink.buyDrink(name: "水")
        img = waterImage.image
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    @IBAction func teaButton(_ sender: Any) {
        result = drink.buyDrink(name: "お茶")
        img = teaImage.image
        performSegue(withIdentifier: "next", sender: nil)
       
        
    }
    @IBAction func coffeeButton(_ sender: Any) {
        result = drink.buyDrink(name: "コーヒー")
        img = coffeeImage.image
        
        self.performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {



        let nextVC = segue.destination as! purchaseViewController
        nextVC.name = result.name ?? "エラー"
        
        nextVC.image = img

    }
    
    
    
    }

