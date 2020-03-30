//
//  ViewController.swift
//  20-TypeCasting
//
//  Created by MAC on 31.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // örnek 1, 2 string değişkeni birini int diğeri ise float tipine dönüştürdük.
        let strNumber = "53"
        let strFloat = "3.180"
        
        let intValue = Int(strNumber)!
        let floatValue = Float(strFloat)!
        
        print(intValue)
        print(floatValue)
        
        // as, as!, as?
        
        //as?
        // ? bu değer nil gelebilir demektir.
        
        let image = UIImage()
        
        let x = image as? UIButton // butona dönüştüremediği için nil değer döndürdü.
        
        let y = image as? UIImage
        
        print(y)
        
        //as!
        // ! unwrapping işlemi ile cast edecek.
        let button = UIButton()
        
        let b = button as! UIButton
        
        print(b)
        
        // as
        // normal atama işlemi yapacak.
        
        let value = "20"
        
        if let data = value as String? {
            print(data)
        }
        
    }


}

