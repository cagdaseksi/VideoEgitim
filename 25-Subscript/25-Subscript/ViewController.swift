//
//  ViewController.swift
//  25-Subscript
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let result = hesapla(carpan: 3)
        print("6 kere 3 = \(result[6])") // [6] çalıştığında subscript çalışacaktır.
        // cmd + r
        
        // 0,1,2
        var event = Event()
        print("3. index değeri: \(event[2])") // get çalışacak.
        
        event[2] = "Yüzme" // burada set işlemi çalışacak.
        
        print("3. index değeri: \(event[2])") // get çalışacak
        
    }


}

struct hesapla {
    let carpan: Int
    
    subscript(satirSayisi:Int) -> Int {
        return carpan * satirSayisi
    }
}

struct Event {
    var events = ["Fotbol", "Konser", "Sinema", "Tiyatro"]
    
    subscript(eventIndex: Int) -> String {
        get {
            return events[eventIndex] // almak
        }
        set(newValue) {
            events[eventIndex] = newValue // değiştirmek
        }
    }
    
}
