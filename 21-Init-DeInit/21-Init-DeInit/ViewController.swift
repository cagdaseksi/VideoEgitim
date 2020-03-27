//
//  ViewController.swift
//  21-Init-DeInit
//
//  Created by MAC on 24.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let derece = Derece()
        
        print("default sıcaklık derecesi: \(derece.sicaklik)")
        
        // deinit kullanımı
        
        var new:OrnekSinif? = OrnekSinif()
        
        print("init çalıştı mı?")
        
        new = nil
        print("deinit çalıştı mı?")
        
        var newP: OrnekSinif? = OrnekSinif(_a: 10)
        print("parametreli versiyonu çalıştımı ?")
        
        newP = nil
        print("p. deinit çalıştı.")
        
    }
}

struct Derece {
    var sicaklik: Double
    init() {
        sicaklik = 22.0
    }
}

class OrnekSinif {
    var a: Int
    init() {
        a = 0
        print("default init çalıştı")
    }
    init(_a: Int) {
        self.a = _a
        print("parametre olan init çalıştı")
    }
    deinit {
        print("denit çalıştı.")
    }
}
