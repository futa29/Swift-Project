//
//  purchaseViewController.swift
//  Jihanki
//
//  Created by RPC322 on 2022/06/17.
//

import UIKit

class purchaseViewController: UIViewController {
    
    var name: String = ""
    var image: UIImage?
    @IBOutlet weak var drinkImage: UIImageView!
    

    @IBOutlet weak var drinkText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        drinkImage.image = image
        drinkText.text = "\(name)を買いました"
        
    }
    

    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
