//
//  Model.swift
//  46-SansOyunlariApp
//
//  Created by MAC on 2.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation

struct Date {
    var date: String
    var value: String
    
    init(_ dictionary: [String: Any]) {
        self.date = dictionary["tarihView"] as? String ?? ""
        self.value = dictionary["tarih"] as? String ?? ""
    }
}
