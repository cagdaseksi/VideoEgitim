//
//  ViewController.swift
//  09-Array
//
//  Created by MAC on 21.02.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Boş Array Tanımlama
        
        var meyveler = [String]()
        var yillar = [Int]()
        
        // Boş kontrolu
        
        if meyveler.isEmpty {
            print("Meyve bulunamdı.")
        }
        
        if yillar.isEmpty {
            print("Yıl bulunamadı.")
        }
        
        // Array eleman ekleme
        
        meyveler.append("Elma")
        meyveler.append("Armut")
        meyveler.append("Ayva")
        
        yillar.append(2022)
        yillar.append(2020)
        yillar.append(2021)
        yillar.append(2019)
       
        
        // Array Eleman Sayısı Bulma
        
        print("Meyve sayısı: \(meyveler.count)")
        print("Yıl sayısı: \(yillar.count)")
        
        // Array ilk elemanı al
        
        let ilkMeyve = meyveler.first
        let sonMeyve = meyveler.last
        
        print("ilk meyve = \(ilkMeyve!) | son meyve = \(sonMeyve!)")
        
        // meyveler  0:Elma, 1:Armut, 2:Ayva
        
        print(meyveler[0])
        print(meyveler[1])
        print(meyveler[2])
        
        // Array eleman silme
        
        meyveler.remove(at: 1) //index sayısını bekler.
        
        print("Meyve sayısı: \(meyveler.count)")
        
        //Array sıralama
        
        print("sıralama yapılmamış array: \(yillar)")
        print("sıralanmış array: \(yillar.sorted())")
        
        // Örnek 2000 li doğum yılı olanların üstündeki bize getir.
        
        var yaslar = [1996,1997,1995,2000,2002,1999,2001]
        
        // filtre
        
        let filtre = yaslar.filter{$0 >= 2000}
        
        print("2000'den buyuk olanlar: \(filtre.sorted())")
        
        // contains true veya false döner
        
        var ilceler = ["Çekmeköy", "Beşiktaş", "Kadıköy", "Silivri", "Tuzla"]
        
        if ilceler.contains("Okmeydanı") == false {
            print("Okmeydanı dizide mevcut değil.")
            ilceler.append("Okmeydanı")
        }
        
        if ilceler.contains("Maltepe") == false {
            print("Maltepe dizide mevcut değil.")
            ilceler.append("Maltepe")
        }
        
        if ilceler.contains("Beşiktaş") == false {
           print("Beşiktaş dizide mevcut değil.")
           ilceler.append("Beşiktaş")
        }
        
        print(ilceler)
        
    }


}

