//
//  ViewController3.swift
//  SwiftIfElse
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Girilen sayının  negatif, pozitif veya sıfır olduğunu gösteren bir uygulama
        
        
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        let number = textfield.text ?? "" //default boş string atadık.
        
        if number.isEmpty {
            label.text = "Bir sayı giriniz."
            return
        }
        
        if let n1 = Int(number) {
            
            if n1 > 0 {
                label.text = "Girilen sayı bir pozitif değerdir."
            }else if n1 < 0 {
                label.text = "Girilen sayı bir negatif değerdir."
            }else {
                label.text = "Girilen sayı 0'dır."
            }
            
        }else {
            label.text = "Bir rakam giriniz."
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
