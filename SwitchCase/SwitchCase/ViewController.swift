//
//  ViewController.swift
//  SwitchCase
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        
        let name = username.text
        let pass = password.text
        
        switch (name, pass) {
            
        case ("cagdas", "1234"):
            label.text = "Hoşgeldin Çağdaş."
            
        case ("haluk", "1234"):
            label.text = "Hoşgeldin Haluk."
            
        case ("burak", "1234"):
            label.text = "Hoşgeldin Burak."
            
        default:
            label.text = "Kimsin sen çıkaramadım."
        }
        
    }
    
}

