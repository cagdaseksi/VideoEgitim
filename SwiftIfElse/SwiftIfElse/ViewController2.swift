//
//  ViewController2.swift
//  SwiftIfElse
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        
        //Örnek
        // Girilen sayının tek mi çift mi olduğunu yazdıran bir uygulama yapacağız.
        
        let number = textfield.text ?? ""
        
        if number.isEmpty {
            label.text = "Lütfen bir sayı giriniz."
            return
        }
        
        if let n1 = Int(number) {
            
            //mod alma işlemi
            if n1 % 2 == 0 {
                label.text = "Girilen sayı çifttir."
            }else {
                label.text = "Girilen sayı tektir."
            }
            
        }else {
            label.text = "Lütfen bir rakam giriniz."
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
