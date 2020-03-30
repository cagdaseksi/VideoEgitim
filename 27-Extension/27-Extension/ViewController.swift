//
//  ViewController.swift
//  27-Extension
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let result = kare(item: 10)
        print(result)
        
        let res = 10.kareExtension()
        print(res)
        
        //örnek 2
        
        let str = " cagdas eksi ".trim()
        print(str)
        
    }

    func kare(item: Int) -> Int {
        return item * item
    }
    
}

// Örnek 1 : int değerinin karesini alan bir extension yaz

extension Int { // mevcut Int değerimizde olmayan bir özellik ile genişletmiş olucaz.
    
    func kareExtension() -> Int {
        return self * self
    }
    
}

// örnek 2: String değer içindeki fazlalık boşlukları temizlesin.
extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
}
