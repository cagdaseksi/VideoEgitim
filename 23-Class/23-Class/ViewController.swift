//
//  ViewController.swift
//  23-Class
//
//  Created by MAC on 27.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let otomobil = Tasit()
        otomobil.hiz = 100
        otomobil.renk = "Kırmızı"
        otomobil.otomatik = true
        otomobil.yakit = .dizel
        
        let otomobil2 = Tasit()
        otomobil2.hiz = 200
        otomobil2.renk = "Siyah"
        otomobil2.otomatik = false
        otomobil2.yakit = .elektrik
        
        otomobil.tasitBilgileri()
        print("************")
        otomobil2.tasitBilgileri()
        
        
        let podcast = Podcast() // bölüm daha başlamadı.
        print(podcast.episode.audio)
        
        //ork:3
        
        let sila = Sanatci(_adi: "Sıla", _yas: 20)
        
        print(sila.adi)
        print(sila.yas)
        sila.sarkiSoyle()
        
        // örnek : 4
        var kare = Dikdortgen(kisaKenar: 10, uzunKenar: 10)
        
        print(kare.alanHesapla())
        print(kare.cevreHesapla())
        
    }

}

class Tasit {
    
    var hiz: Int = 0
    var renk: String = ""
    var otomatik: Bool = false
    var yakit: yakitTipi = .bilinmiyor
    
    func tasitBilgileri() {
        print("Hızı: \(hiz), Renk: \(renk), Vites Tipi: \(otomatik ? "Otomatik" : "manuel"), Yakıt Tip: \(yakit) ")
    }
    
}

enum yakitTipi {
    case benzin, dizel, lpg, elektrik, bilinmiyor
}

// örnek 2 - Class içinde class tanımlama
class Podcast {
    lazy var episode = Episode() // "var" zorunlu değişken
}

class Episode {
    var audio = "muzik.mp3"
}

// örnek 3

class Sanatci {
    var adi: String
    var yas: Int
    
    init(_adi: String, _yas:Int) {
        self.adi = _adi
        self.yas = _yas
    }
    
    func sarkiSoyle() {
        print("la alalal a lalala ")
    }
    
}

// örnek

class Dikdortgen {
    var kisaKenar = 0
    var uzunKenar = 0
    
    init(kisaKenar:Int, uzunKenar:Int) {
        print("init çalıltı.")
        self.kisaKenar = kisaKenar
        self.uzunKenar = uzunKenar
    }
    
    func alanHesapla() -> Int {
        return kisaKenar * uzunKenar
    }
    
    func cevreHesapla() -> Int{
        return 2 * (kisaKenar + uzunKenar)
    }
    
}
