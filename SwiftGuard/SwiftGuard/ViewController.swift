//
//  ViewController.swift
//  SwiftGuard
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        
        //Örnek 1
        // Girilen sayının numara olup olmadığını söyle.
        
        let data = textfield.text ?? ""
        
        // if ile yapılan kısım
        if let n1 = Int(data) {
            label.text = "Girilen değer bir sayıdır. Girilen değer: \(n1)"
        }else {
            label.text = "Girilen değer bir sayı değildir."
        }
        
        //guard kullanarak yapılan kısım.
        guard let n2 = Int(data) else {
            label.text = "Girilen değer bir sayı değildir."
            return
        }
        
        label.text = "Girilen değer bir sayıdır. Girilen değer: \(n2)"
        
        // Örnek 2
        // 1'den 100'e kadar dönen bir döngü olurtur.
        //8 ile eşit bölünen sayıları print et.
        
        for number in 1...100 {
            
            guard number % 8 == 0 else {
                continue
            }
            
            print(number)
            
        }
        
        
    }
    

}

