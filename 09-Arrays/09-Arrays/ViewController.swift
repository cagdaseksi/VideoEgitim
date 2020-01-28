//
//  ViewController.swift
//  09-Arrays
//
//  Created by MAC on 26.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var list = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Boş array
        
        //var list = [Int]()
        
        //contains arama yapan method true veya false döndürür.
        
    }

    // Array append
    @IBAction func btnAdd(_ sender: Any) {
        
        let item = textfield.text ?? ""
        
        if item.isEmpty {
            
            label.text = "Lütfen bir rakam giriniz."
            
            return
        }
        
        if let n1 = Int(item) {
            
            //diziye eleman ekler.
            list.append(n1)
            
            label.text = "Tebrikler \(n1) başarılı bir şekilde eklendi."
            
        }else {
            
            label.text = "Lütfen bir sayı giriniz."
            
        }
        
    }
    
    @IBAction func btnCount(_ sender: Any) {
        
        //Dizideki eleman sayısını bulma
        
        label.text = "Dizideki eleman sayısı = \(list.count)"
        
    }
    
    // Dizinin ilk elemanını getir
    @IBAction func btnFirst(_ sender: Any) {
        
        let firstItem = list.first ?? -1 //default değer verdik.
        
        label.text = "First item = \(firstItem)"
        
    }
    
    //index 'e göre getir
    @IBAction func btnIndex(_ sender: Any) {
        
        let item = textfield.text ?? ""
               
           if item.isEmpty {
               
               label.text = "Lütfen bir rakam giriniz."
               
               return
           }
           
           if let index = Int(item) {
            
            let maxIndexSayisi = list.count - 1
            
            if index > maxIndexSayisi {
                label.text = "index sayısı eleman sayısından büyük olamaz."
                return
            }
            
            let indexItem = list[index]
            
            
            label.text = "dizinin \(index) indisindeki elemanı = \(indexItem)."
               
           }else {
               
               label.text = "Lütfen bir sayı giriniz."
               
           }
        
    }
    
    //diziden eleman silme.
    @IBAction func btnRemove(_ sender: Any) {
        
        let index = Int(textfield.text ?? "")!
        
        list.remove(at: index)
        
        label.text = "Kalan sayı: \(list.count)"
        
    }
    
    //sıralama yap
    @IBAction func btnSort(_ sender: Any) {
        
        // array i string'e dönüştürdük.
        let part1 = list.map { String($0) }
        
        //tek satır olarak yazdırmak istiyorum.
        let line = part1.joined(separator: ",")
        
        label.text = "Orjinal dizi \(line)"
        
        list.sort()
        
        print(list)
        
    }
    
}
