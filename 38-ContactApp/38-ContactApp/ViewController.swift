//
//  ViewController.swift
//  38-ContactApp
//
//  Created by MAC on 20.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit
import ContactsUI

class ViewController: UIViewController, CNContactPickerDelegate {

    @IBOutlet weak var number: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        
        let picker = CNContactPickerViewController()
        picker.delegate = self
        picker.modalPresentationStyle = .fullScreen
        self.present(picker, animated: true, completion: nil)
        
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach{ contanct in
            
            let phoneNumber = contanct.phoneNumbers.first
            
            number.text = phoneNumber?.value.stringValue
            
        }
    }
    
}

