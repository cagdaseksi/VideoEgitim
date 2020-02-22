//
//  ViewController.swift
//  10-Sets
//
//  Created by MAC on 21.02.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets Boş Oluşturma
        
        var meyveler = Set<String>()
        //var meyveler:Set<String> = Set<String>()
        
        // Boş Kontrolü
        
        if meyveler.isEmpty {
            print("meyve bulunamadı.")
        }
        
        // Sets Eleman Ekleme
        
        meyveler.insert("Elma")
        meyveler.insert("Armut")
        meyveler.insert("Kayısı")
        
        // Sets Eleman sayısı Bulma
        
        print(meyveler.count)
        
        // Set Eleman silme
        
        meyveler.remove("Elma")
        
        print(meyveler)
        
        // Sets contains true veya false
        
        if meyveler.contains("Elma") {
            print("Evet elma var.")
        }else {
            meyveler.insert("Elma")
        }
        
        print(meyveler)
        
        // for döngüsü kullanma
        
        for meyve in meyveler {
            print(meyve)
        }
        
        
        // 4 temel işlem var
        
        // 1. intersection -> kesişim
        // 2. symmetricDiffirence -> simetrik farkı
        // 3. union -> birleşim
        // 4. subtracting - farkını almak
        
        // intersection
        
        let oddDigits:Set = [1,3,5,7,9, 100] // tek sayılar kümesi
        let evenDigits:Set = [0,2,4,6,8, 100] // çift sayılar kümesi
        
        print(oddDigits.intersection(evenDigits))
        
        // symmetricDiffirence
        
        print(oddDigits.symmetricDifference(evenDigits))
        
        //union
        
        print(oddDigits.union(evenDigits))
        
        // subtracting
        
        print(oddDigits.subtracting(evenDigits))
        
        
        // Set Membership ve Equality // Kümelerde Üyelik ve eşitlik durumları
        
        // 1. isSubset : bir kümedeki tüm değerlerin bir başka kümede olup olmadığını gösterir.
        // 2. isSuperset : kapsayıp kapsamadığını gösterir.
        // 3. isDisjoint :  iki kümünin ortak elemanları var mı
        
        let houseAnimals: Set = ["🐶", "🐱"] // ev hayvanları
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"] // çiftlik hayvanları
        let cityAnimals: Set = ["🐦", "🐭"]
        
        // Örnek 1
        
        // Ev hayvanları çiftlik hayvanlarının bir alt kümesimi?
        
        if houseAnimals.isSubset(of: farmAnimals) {
            print("Ev hayvanları, çiftlik hayvanlarının bir alt kümesidir.")
        }
        
        
        // Örnek 2
        
        // Çiftlik hayvanları ev hayvanlarını kapsıyor mu?
        
        if farmAnimals.isSuperset(of: houseAnimals) {
            print("Çiftlik hayvanları ev hayvanlarını kapsıyor.")
        }
        
        // Örnek 3
        
        // 2 kümenin birbirinden farklı değerleri var mı?
        
        if cityAnimals.isDisjoint(with: houseAnimals) {
            print("Ortak elemanları bulunmuyor.")
        }
        
        
    }


}

