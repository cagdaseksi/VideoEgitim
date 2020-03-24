//
//  ViewController.swift
//  18-Enumeration
//
//  Created by MAC on 24.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let bugun = Gunler.cumartesi
        
        print(bugun)
        
        // switch case ile kullanma
        
        switch bugun {
        case Gunler.pazartesi:
            print("Haftanın ilk iş günü")
        case Gunler.sali:
            print("Haftanın 2. iş günü")
        case Gunler.cumartesi:
            print("hafta sonu")
        case Gunler.pazar:
            print("yarın iş var")
        default:
            print("belli bir gün değil.")
        }
        
        // raw value property okuma işlemi
        
        let dunyaninSirası = Gezegenler.dunya.rawValue
        
        print("Dünyanın sırası: \(dunyaninSirası)")
        
    }


}
//örn 1 : Haftanın günlerini enum ile tanımala

enum Gunler {
    case pazartesi
    case sali
    case carsamba
    case persembe
    case cuma
    case cumartesi
    case pazar
}

// kisa tanımlama

enum GunlerKisa {
    case pazartesi, sali, carsamba, persembe, cuma, cumartesi, pazar
}

// enum satır değerleri
enum Gezegenler: Int {
    case merkur = 1, venus, dunya, mars, jupiter, saturn, uranus, neptun
}
