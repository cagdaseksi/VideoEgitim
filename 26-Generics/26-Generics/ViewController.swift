//
//  ViewController.swift
//  26-Generics
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // örnek 1 String
        var username = "ceksi"
        var password = "1234"

        print("username: \(username), password: \(password) ")
        swap(item1: &username, item2: &password)
        print("username: \(username), password: \(password) ")

        // örnek 2 Int
        var number1 = 1111
        var number2 = 2222

        print("number1: \(number1), number2: \(number2) ")
        swap(item1: &number1, item2: &number2)
        print("number1: \(number1), number2: \(number2) ")

        // örnek 2 Double
        var number3 = 20.99
        var number4 = 22.99

        print("number3: \(number3), number4: \(number4) ")
        swap(item1: &number3, item2: &number4)
        print("number3: \(number3), number4: \(number4) ")
        
    }

    // örnek yer değiştirme methodu String, hemde Int
    
    // generic fonksiyon
    
    func swap<T>(item1: inout T, item2: inout T){
           let temp = item1
           item1 = item2
           item2 = temp
    }
    
    
    /* Kullanma **/
    
    func swap_not(item1: inout String, item2: inout String){
        let temp = item1
        item1 = item2
        item2 = temp
    }
    
    func swap_not(item1: inout Int, item2: inout Int){
        let temp = item1
        item1 = item2
        item2 = temp
    }
    
    func swap_not(item1: inout Double, item2: inout Double){
        let temp = item1
        item1 = item2
        item2 = temp
    }
    
    /* Kullanma **/
    
    
    
}


