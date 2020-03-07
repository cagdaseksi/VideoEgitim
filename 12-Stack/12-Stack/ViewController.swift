//
//  ViewController.swift
//  12-Stack
//
//  Created by MAC on 22.02.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Stack
        
        //
        
        var meyveler = Stack<String>()
        
        // Push ile eleman ekleme
        // eklenen son eleman stack ğin ilk elemanı olur.
        
        meyveler.push("Elma")
        meyveler.push("Armut")
        meyveler.push("Erik")
        meyveler.push("Kayısı")
        
        print(meyveler)
        
        // Pop ile eleman çıkarmar
        
        //meyveler.pop()
        
        let sonEleman = meyveler.pop()
        
        print(sonEleman)
        print(meyveler)
        
        // en üstteki elemanı getir.
        
        if let topValue = meyveler.topValue {
            print("Stack'in en üstteki elemanı = \(topValue)")
        }
        
        
        // int türünde stack tanımı
        
        var yillar = Stack<Int>()
        
        print(yillar)
        
        yillar.push(2020)
        yillar.push(2021)
        yillar.push(2022)
        yillar.push(2023)
        
        print(yillar)
        
        let lastYear = yillar.pop()
        
        print(lastYear)
        
        // son eleman
        if let topYear = yillar.topValue {
            print("En üst elemanımız = \(topYear)")
        }
        
    }


}

struct Stack<T> {
    var values = [T]() // 1,2,3
    var topValue: T? {
        return values.isEmpty ? nil : values[values.count - 1] // max index no = values.count - 1
    }
    mutating func push(_ value:T) {
        values.append(value)
    }
    mutating func pop() -> T {
        return values.removeLast()
    }
}


// stored property
//computed property


