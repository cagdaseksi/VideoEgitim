//
//  ItemModel.swift
//  36-FirebaseApp
//
//  Created by MAC on 18.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation
import Firebase

class ItemModel: NSObject {
    
    private var _ref: DatabaseReference!
    
    private var _key: String!
    private var _title: String!
    private var _desc: String!
    private var _email: String!
    private var _like: Int! = 0
    private var _type: String!
    
    var key : String {
        return _key
    }
    
    var title: String {
        return _title
    }
    
    var desc: String {
           return _desc
    }
    
    var email: String {
           return _email
    }
    
    var type: String {
           return _type
    }
    
    var like: Int {
        return _like
    }
    
    init (key: String, dictionary: Dictionary<String, AnyObject>) {
        
        self._key = key
        
        if let title = dictionary["title"] as? String {
            self._title = title
        }else {
            self._title = ""
        }

        if let like = dictionary["like"] as? Int {
            self._like = like
        }
        
        if let email = dictionary["email"] as? String {
            self._email = email
        }
        
        if let desc = dictionary["desc"] as? String {
            self._desc = desc
        }
        
        if let type = dictionary["type"] as? String {
            self._type = type
        }
        
        self._ref = DataService.dataService.ITEM_REF.child(self._key)
        
    }
    
    
}
