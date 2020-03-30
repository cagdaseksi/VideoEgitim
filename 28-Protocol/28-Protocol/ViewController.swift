//
//  ViewController.swift
//  28-Protocol
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let obj = user(iname: "cagdas", iage: 30)
        
        get(p: obj)
        
    }

    func get(p: vip){
        p.nameGetter()
        p.ageGetter()
    }

}

protocol vip {
    var name: String? {get}
    var age: Int? {get}
    
    func nameGetter()
    func ageGetter()
}

class user: vip {
    
    var name: String?
    var age: Int?
    
    init () {}
    
    init(iname: String?, iage: Int?) {
        name = iname
        age = iage
    }
    
    func nameGetter() {
        print(name!)
    }
    
    func ageGetter() {
        print(age!)
    }
    
}
