//
//  ViewController.swift
//  16-Function
//
//  Created by MAC on 23.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // fonksiyon çağırma işlemi
        yasOrtalamasiHesapla()
        
        //parametre alan fonksiyon çağırma işlemi
        yasOrtalamasiHesapla(yas1: 20, yas2: 24)
        
        //geriye değer döndüren fonksiyon
        let ort = yasOrtalamasiHesapla(number1: 20, number2: 24)
        print("2 sayının ortalaması: \(ort)")
        
        // external method çağırma
        
        hesapla(hesaplamaIslemi: "topla", BirinciSayi: 10, IkinciSayi: 10)
        
        hesapla(hesaplamaIslemi: "çarpma", BirinciSayi: 10, IkinciSayi: 10)
        
        hesapla(hesaplamaIslemi: "ortalama", BirinciSayi: 10, IkinciSayi: 10)
        
        hesapla(hesaplamaIslemi: "çıkarma", BirinciSayi: 10, IkinciSayi: 10)
        
        //parametre adı olmadan fonksiyon çağırma
        
        hesapla("topla", 10, 10)
        
        // birden fazla değer döndüren fonksiyon kullanımı
        
        let result = hesapla(10, 10)
        
        print("toplamı: \(result.toplami), çarpımı: \(result.carpimi), ortalaması: \(result.ortalamasi)")
        
        
    }

    // parametre almayan fonksiyon tanımala
    
    func yasOrtalamasiHesapla() {
        
        let yas1 = 20
        let yas2 = 24
        
        let ort = (yas1 + yas2) / 2
        
        print("2 yaşın ortalaması: \(ort)")
        
    }
    
    //ornek 2 : Parametre alan fonksiyonlar
    
    func yasOrtalamasiHesapla(yas1: Int, yas2: Int){
        
        let ort = (yas1 + yas2) / 2
        
        print("2 yaşın ortalaması: \(ort)")
        
    }
    
    // Ornek 3: Geriye değer döndüren fonksiyonlar
    
    func yasOrtalamasiHesapla(number1: Int, number2: Int) -> Int {
        
        let result = (number1 + number2) / 2
        
        return result
        
    }
    
    //örnek 4: External Parametre alan fonksiyon kullanımı
    
    func hesapla(hesaplamaIslemi islem:String, BirinciSayi sayi1:Int, IkinciSayi sayi2:Int) {
        
        switch islem {
            case "topla":
                print("toplamı: \(sayi1 + sayi2)")
            case "çarpma":
                print("çarpımı: \(sayi1 * sayi2)")
            case "ortalama":
                print("ortalaması: \((sayi1 + sayi2) / 2)")
        default:
                print("geçersiz işlem")
        }
        
    }
    
    // parametre adı görmek istemiyorum.
    func hesapla(_ islem:String, _ sayi1:Int, _ sayi2:Int) {
        
        switch islem {
            case "topla":
                print("toplamı: \(sayi1 + sayi2)")
            case "çarpma":
                print("çarpımı: \(sayi1 * sayi2)")
            case "ortalama":
                print("ortalaması: \((sayi1 + sayi2) / 2)")
        default:
                print("geçersiz işlem")
        }
        
    }
    
    // geriye birden çok değer fonsiyon tanımlama
    func hesapla(_ sayi1:Int, _ sayi2:Int) -> (toplami: Int, carpimi: Int, ortalamasi: Int) {
        
        let toplami = sayi1 + sayi2
        let carpimi = sayi1 * sayi2
        let ortalamasi = (sayi1 + sayi2) / 2
        
        return (toplami,carpimi,ortalamasi)
    }
    
}

