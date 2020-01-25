//
//  ViewController.swift
//  07-For-While
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //print(1)
        //print(2)
        //print(3)
        //print(4)
        //print(5)
        //print(6)
        //print(7)
        //print(8)
        //print(9)
        //print(10)
        
        for number in 1...10 {
            //print(number)
        }
        
        for _ in 1...10 {
            //print("burak")
        }
        
        // Array Kullanımı
        let cities = ["Istanbul", "Ankara", "Izmir", "Antalya", "Çanakkale"]
        
        for city in cities {
            print("Şehir: \(city)")
        }
        
        //Dictionary Kullanımı
        let cityArray = ["Istanbul": 34, "Ankara": 06, "Izmir": 35, "Antalya": 07, "Çanakkale": 17]
        
        for (cityName, cityNumber) in cityArray {
            print("Şehir adı: \(cityName), plaka kodu: \(cityNumber)")
        }
        
        //Karakter bulma
        
        var kelime = "weloveswift"
        
        for karakter in kelime {
            print(karakter)
        }
        
        // 0 ile 100 arasındaki toplamını bulma
        
        var total = 0
        
        for number in 0...100 {
            total = total + number
        }
        
        print("Toplam sayı: \(total)")
        
        
    }


}

