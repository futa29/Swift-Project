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
    
    //returnで帰ってくる値をタプルで設定
    var result: (name:String?,balance:Int?,stock:Int?)
    
    
    var img: UIImage?
    
    var myMoney = 300
    
    @IBOutlet weak var money: UILabel!
    
    //画像をそれぞれ設定
    @IBOutlet weak var waterImage: UIImageView!
    
    
    @IBOutlet weak var waterbutton: UIButton!
    
    
    @IBOutlet weak var teaImage: UIImageView!
    
    @IBOutlet weak var teabutton: UIButton!
    
    @IBOutlet weak var coffeeImage: UIImageView!
    @IBOutlet weak var coffeebutton: UIButton!
    
    
    @IBOutlet weak var waterStock: UILabel!
    
    @IBOutlet weak var teaStock: UILabel!
    
    @IBOutlet weak var coffeeStock: UILabel!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    //DidLoadだとアプリ起動の一回目しか動かないため、viewWillAppearを使用
    override func viewWillAppear(_ animated: Bool) {
        
        //result.balance（残金）はオプショナル型のため、アンラップ
        if let _ = result.balance{
            money.text = "所持金 \(result.balance!)円"
        //アプリを起動した時は残金がnilの為、初期設定の1000円を入れる
        } else {
            money.text = "所持金 \(myMoney)円"
        }
        
        if (waterStock.text == String(0)){
            waterbutton.isEnabled = false
        }else if (teaStock.text == String(0)){
            teabutton.isEnabled = false
        }else if (coffeeStock.text == String(0)){
            coffeebutton.isEnabled = false
        }
    }
    
    
    
    @IBAction func waterButton(_ sender: Any) {
        result = drink.buyDrink(name: "水")
        img = waterImage.image
        waterStock.text = String(result.stock!)
        
        segue()
        
    }
    
    @IBAction func teaButton(_ sender: Any) {
        result = drink.buyDrink(name: "お茶")
        img = teaImage.image
        teaStock.text = String(result.stock!)
        segue()
       
        
    }
    @IBAction func coffeeButton(_ sender: Any) {
        result = drink.buyDrink(name: "コーヒー")
        img = coffeeImage.image
        coffeeStock.text = String(result.stock!)
        
       segue()
        
    }
    
    func segue(){
        if (result.balance == 000){
            errorLabel.text = "お金が足りません"
        }else{
            self.performSegue(withIdentifier: "next", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {



        let nextVC = segue.destination as! purchaseViewController
        nextVC.name = result.name ?? "エラー"
        
        nextVC.image = img

    }
    
    
    
    }

