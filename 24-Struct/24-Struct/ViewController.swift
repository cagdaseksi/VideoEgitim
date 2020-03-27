//
//  ViewController.swift
//  24-Struct
//
//  Created by MAC on 27.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let kareClass = Dikdortgen1(kisaKenar: 10, uzunKenar: 10)
        print(kareClass.alanHesapla())
        print(kareClass.cevreHesapla())
        
        let kareStruct = Dikdortgen2(kisaKenar: 10, uzunKenar: 10)
        print(kareStruct.alanHesapla())
        print(kareStruct.cevreHesapla())
        
         print("*******Value type*********")
        
        // value type Struct
        var point1 = PointStruct(x: 10, y: 1)
        var point2 = point1
        print(point1.x)
        print(point2.x)
        
        point1.x = 1000
        print(point1.x)
        print(point2.x)
        
        print("*******Reference type*********")
        
        // class
        
        var pointClass1 = PointClass(x: 10, y: 1)
        var pointClass2 = pointClass1
        
        print(pointClass1.x)
        print(pointClass2.x)
        
        print("Değer değiştirdik.")
        pointClass1.x = 1000
        print(pointClass1.x)
        print(pointClass2.x)
        
    }
}

class Dikdortgen1 {
    var kisaKenar = 0
    var uzunKenar = 0
    
    init() {
        print("boş init")
    }
    
    init(kisaKenar:Int, uzunKenar:Int) {
        print("init çalıştı.")
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

struct Dikdortgen2 {
    var kisaKenar = 0
    var uzunKenar = 0
    
    func alanHesapla() -> Int {
        return kisaKenar * uzunKenar
    }
    
    func cevreHesapla() -> Int{
        return 2 * (kisaKenar + uzunKenar)
    }
    
}

struct PointStruct {
    var x = 0
    var y = 0
}

class PointClass {
    var x = 0
    var y = 0
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
}
