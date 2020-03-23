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
        
        //parametre alan func çağırma
        yasOrtalamasiHesapla(yas1: 20, yas2: 24)
        
        // geriye değer döndüren method
        let result = yasOrtalamasiHesapla(number1: 20, number2: 24)
        
        print("2 sayının ortalaması: \(result)")

        //external parametre alan method.
        hesapla(hesapamalaIslemi: "topla", BirinciSayi: 10, Ikincisayi: 10)
        
        hesapla(hesapamalaIslemi: "çarpma", BirinciSayi: 10, Ikincisayi: 10)
        
        hesapla(hesapamalaIslemi: "ortalama", BirinciSayi: 10, Ikincisayi: 10)
        
        hesapla(hesapamalaIslemi: "çıkarma", BirinciSayi: 10, Ikincisayi: 10)
        
        
        //parametre adı kullanmadım
        
        hesapla("topla", 10, 10)
        
        // geriye birden fazla değer döndüren fonksiyon
        
        let sonuc = hesapla(10, 10)
        
        print("toplamı: \(sonuc.toplami), çarpımı: \(sonuc.carpimi), ortalaması: \(sonuc.ortalamasi)")
        
        
    }

    // örn 1: parametre almayan fonksiyon tanımala
    
    func yasOrtalamasiHesapla() {
        
        let yas1 = 20
        let yas2 = 24
        
        let ort = (yas1 + yas2) / 2
        
        print("2 yaşın ortalaması: \(ort)")
        
    }
    
    //  örn 2: parametre alan foknsiyonlar
    
    func yasOrtalamasiHesapla(yas1: Int, yas2: Int) {
        
        let ort = (yas1 + yas2) / 2
        
        print("2 yaşın ortalaması: \(ort)")
        
    }
    
    // orn 3: geriye değer döndüren fonksiyonlar
    
    func yasOrtalamasiHesapla(number1: Int, number2: Int) -> Int {
        
        let ort = (number1 + number2) / 2
        
        return ort
    }
    
    // örn 4: External parametre alan fonksiyon kullanımı
    
    func hesapla(hesapamalaIslemi islem:String, BirinciSayi sayi1: Int, Ikincisayi sayi2: Int) {
        
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
    
    // Örnk 5: parametre görmek istemiyorum
    
    func hesapla(_ islem:String, _ sayi1: Int, _ sayi2: Int) {
        
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

    //örnek 6: Geriye birden fazla değer fonksiyon
    
    func hesapla(_ sayi1: Int, _ sayi2: Int) -> (toplami: Int, carpimi: Int, ortalamasi: Int){
        
        let toplami = sayi1 + sayi2
        let carpimi = sayi1 * sayi2
        let ortalamasi = (sayi1 + sayi2) / 2
        
        return (toplami, carpimi, ortalamasi)
        
    }
    
}

