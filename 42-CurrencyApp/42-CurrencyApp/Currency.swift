//
//  Currency.swift
//  42-CurrencyApp
//
//  Created by MAC on 29.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation

struct Currency {
    var code: String = ""
    var value: Double = 0
    var image: String {
        return code + ".png"
    }
}
