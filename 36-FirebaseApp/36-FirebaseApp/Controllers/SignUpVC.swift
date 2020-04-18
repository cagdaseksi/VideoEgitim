//
//  SignUpVC.swift
//  36-FirebaseApp
//
//  Created by MAC on 17.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        
        let pass = passwordText.text ?? ""
        let repeatPass = repeatPassword.text ?? ""
        let email = emailText.text ?? ""

        if pass.isEmpty || email.isEmpty || repeatPass !=  pass {
           Common.showAlert(title: "Bilgileri Kontrol ediniz.", message: "Lütfen şifre veya email giriniz.", vc: self)
           return
        }
        
        createuser(email: email, password: pass)
        
    }
    
    func createuser(email: String, password: String){
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                
                Common.showAlert(title: "Uyarı!", message: error?.localizedDescription ?? "Kullanıcı oluşturulamadı.", vc: self)
                    
            }else {
                
                _ = self.navigationController?.popToRootViewController(animated: true)
                
            }
            
            
        }
        
    }

}
