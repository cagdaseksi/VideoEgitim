//
//  DataService.swift
//  36-FirebaseApp
//
//  Created by MAC on 17.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation
import Firebase

let BASE_URL = "https://fir-app-66ec8.firebaseio.com/"

class DataService {
    static let dataService = DataService()
    
    private var _BASE_REF = Database.database().reference(fromURL: "\(BASE_URL)")
    private var _ITEM_REF = Database.database().reference(fromURL: "\(BASE_URL)/items")

    var BASE_REF: DatabaseReference {
        return _BASE_REF
    }
    
    var ITEM_REF: DatabaseReference {
        return _ITEM_REF
    }
}

