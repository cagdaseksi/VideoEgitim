//
//  ViewController.swift
//  22-Optional
//
//  Created by MAC on 27.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var benimAdim = "Çağdaş"
        var benimIkinciAdım: String? = "Ahmet" // ? kullanarak bu değerin boş gelebileceğini söyledik.
        var benimSoyadim = "Ekşi"
        
        // değerleri sil
        
        //benimAdim = nil
        //benimSoyadim = nil
        //benimIkinciAdım = nil
        
        if let ikinkiadim = benimIkinciAdım {
             print("Adım: \(benimAdim), ikinci Adım: \(ikinkiadim), soyadım: \(benimSoyadim)")
        }
        
        // ! işareti ile force unwrapping yapılır.
        
        
    }


}

