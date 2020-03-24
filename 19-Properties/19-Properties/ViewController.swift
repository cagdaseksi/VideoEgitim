//
//  ViewController.swift
//  19-Properties
//
//  Created by MAC on 24.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var userInfo = UserInfo1(name: "cagdas", age: 29) // 1. neden
        
        print(userInfo.age)
        
        // yeni bir değer atama
        
        //userInfo.name = "cagdas"
        
        userInfo.age = 31
        
        print(userInfo.age)
        
        
        //
        var user = User()
        
        user.user2.age = 32
        
        print(user.user2.age)
        
    }


}

struct UserInfo1 {
    let name: String // let ile tanımlandığı için sabit bir değer ve değiştirilemez.
    var age: Int // var ile tanımlandığı için değeri değişitirilebilir. // 2.neden
}

struct UserInfo2 {
    var name: String
    var age: Int
    
    init(_name:String, _age:Int) {
        
        print("init çalıştı")
        
        self.name = _name
        self.age = _age
    }
    
}

struct User {
    //var user1 = UserInfo2(_name: "cagdas", _age: 29)
    lazy var user2 = UserInfo2(_name: "cagdas", _age: 29)
}
