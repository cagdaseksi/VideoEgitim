//
//  ViewController.swift
//  11-Dictionary
//
//  Created by MAC on 21.02.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Dictionary
        
        //Örnek
        
        // Kişilerin notlarını ve isimleri tutmak istiyorum.
        
        // key value
        
        var noteAndName = [Int: String]()
        
        //var nameAndNote = [String: Int]()
        
        noteAndName[50] = "Çağdaş"
        
        print(noteAndName)
        
        // Dictionary Boş Kontrolü
        
        var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        var someDict2:[Int:String] = [4:"Four", 5:"Five"]
        var someDict3:[Int:String] = [Int:String]()
        
        print("somedict1 = \(someDict1.isEmpty)")
        print("someDict2 = \(someDict2.isEmpty)")
        print("someDict3 = \(someDict3.isEmpty)")
        
        var ulkeVeBaskentler = ["Türkiye":"Ankara", "Almanya":"Berlin", "Fransa":"Paris"]
        
        // sadece keys ve values getir
        
        let dictKeys = ulkeVeBaskentler.keys
        
        for key in dictKeys {
            print(key)
        }
        
        let dictValues = ulkeVeBaskentler.values
        
        for value in dictValues {
            print(value)
        }
        
        // hem ülke hemde başkenti yazdır
        
        for (key,value) in ulkeVeBaskentler {
            print("Ülke = \(key), Başkent = \(value)")
        }
        
        // Kaç tane eleman var?
        
        print(ulkeVeBaskentler.count)
        
        
        // tüm kayıtları silme
        
        // 1. yol
        //ulkeVeBaskentler.removeAll() // array ve set lerde bu method geçerli.
       
        // 2. yol
        //ulkeVeBaskentler = [:]
        
        print(ulkeVeBaskentler)
        
        // Key'e Kayıt güncelleme
        
        ulkeVeBaskentler["Türkiye"] = "İstanbul"
        
        print(ulkeVeBaskentler)
        
        ulkeVeBaskentler["Türkiye"] = "Ankara"
        
        // Bir eleman çıkarma
        
        //1. yol
        ulkeVeBaskentler.removeValue(forKey: "Fransa")
        
        //2. yol
        //ulkeVeBaskentler["Fransa"] = nil
        
        print(ulkeVeBaskentler)
        
        if let baskent = ulkeVeBaskentler["Türkiye"] {
            print("Türkiye'nin başkenti \(baskent)'dır. \(baskent) kalacaktır.")
        }else {
            print("ülke bulunamadı.")
        }
        
    }


}

