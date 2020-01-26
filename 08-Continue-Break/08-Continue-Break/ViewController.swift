//
//  ViewController.swift
//  08-Continue-Break
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Örnek
        // 10 a kadar dönen bir döngü olsun.
        // 3e eşitse bir sonraki elemana geçsin 3 değerini yazdırmasın.
        
        for number in 0...10 {
            
            if number == 3 {
                continue
            }
            
            print("sayi: \(number)")
            
        }
        
        // Örnek 2
        // tek sayı ise yazdır çift sayı ise yazdırma.
        
        for number in 0...10 {
            
            if number % 2 == 0 {
                continue
            }
            
            print("\(number) sayısı tektir.")
            
        }
        
        // Break
        
        for number in 0...10 {
            
            if number == 3 {
                break
            }
            
            print("sayi: \(number)")
            
        }
        
        let names = ["cagdas", "haluk", "burak"]
        
        for name in names {
            
            if name == "haluk" {
                break
            }
            
            print(name)
            
        }
        //output
        //continue: cagdas  ve burak
        //break: cagdas
        
        
        
    }


}

