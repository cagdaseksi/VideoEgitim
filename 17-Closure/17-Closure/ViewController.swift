//
//  ViewController.swift
//  17-Closure
//
//  Created by MAC on 23.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let resultFunc = topla(10, 10)
        print("toplam: \(resultFunc)")
        
        // closure
        
        var resultClosure: (Int, Int) -> (Int) = { sayi1, sayi2 in
            return sayi1 + sayi2
        }
        
        let t = resultClosure(10,10)
        
        print("toplam: \(t)")
        
        // kısa kullanımı closure
        var kisaTopla: (Int, Int) -> (Int) = {
            return $0 + $1
        }
        
        print("toplam: \(kisaTopla(10,10))")
        
    }

    // Toplama işlemi
    
    // fonksiyon olarak kullanımı
    
    func topla(_ sayi1: Int, _ sayi2: Int) -> Int {
        
        return sayi1 + sayi2
        
    }
    

}

