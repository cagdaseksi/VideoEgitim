//
//  AddViewController.swift
//  48-RemindersApp
//
//  Created by MAC on 2.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var lblBody: UITextField!
    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion: ((String, String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(btnSave))
        
    }
    
    @objc func btnSave() {
        
        if let titletext = lblTitle.text, !titletext.isEmpty,
            let bodyText = lblBody.text, !bodyText.isEmpty {
            
            let targetDate = datePicker.date
            
            completion?(titletext, bodyText,targetDate)
            
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
