//
//  ViewController.swift
//  29-AccessControls
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ac = accessControl()
        
        ac.myMessage()
        
        //fileprivate
        ac.myMessage(message: "fileprivate mesajıdır.")
        
        //private
        ac.privateMessage()
        
        
    }


}

struct accessControl {
    
    internal func myMessage() {
        print("Hello swift.")
    }
    
    fileprivate func myMessage(message: String){
        print(message)
    }
    
    private func myMessage(title: String, message: String){
        print("title: \(title), message: \(message)")
    }
    
    func privateMessage(){
        print(myMessage(title: "Private", message: "sadece aynı skop üzerinde çalışır."))
    }
    
}
