//
//  ViewController.swift
//  SwiftIfElse
//
//  Created by MAC on 22.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNote1: UITextField!
    @IBOutlet weak var txtNote2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Örnek 1
        // 2 adet not bilgisi alalım.
        // ortalaması 50 ve üzeri ise "Geçti" yazsın eğer küçük ise "Kaldı" yazsın.
        
        //Örnek 2
        // kullanıcı adı ve şifre girilsin.
        // şifre ve kullanıcı adı doğru ise giriş başarılı değil ise giriş başarısız oldu diye bir sonuç döndürelim.
        
        
    }

    @IBAction func btnCalculator(_ sender: Any) {
        
        // butona tıklandıktan sonra çalışacak olan kısım.
        
        let username = "cagdas"
        let password = "1234"
        
        if username == txtNote1.text && password == txtNote2.text {
            lblResult.text = "Tebrikler.Giriş başarılı oldu"
        }else {
            lblResult.text = "Kullanıcı adı veya şifreniz hatalı."
        }
        
        // ortalama note hesaplama
        
        //let note1 = txtNote1.text ?? "0"
        //let note2 = txtNote2.text ?? "0"
        
        //let ort = (Int(note1)! + Int(note2)!) / 2
        
        //if ort >= 50 {
        //    lblResult.text = "Geçti."
        //}else {
        //    lblResult.text = "Kaldı."
        //}
        
    }
    
}

