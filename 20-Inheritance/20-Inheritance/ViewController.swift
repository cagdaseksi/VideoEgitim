//
//  ViewController.swift
//  20-Inheritance
//
//  Created by MAC on 24.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let kopek = Kopek()
        kopek.sesCikar()
        
        let kedi = Kedi()
        kedi.sesCikar()
        
        // miras alan bir classtan miras alma
        
        let kurt = Kurt()
        kurt.sesCikar()
        
    }


}

// Base class
class Hayvan {
    func sesCikar() {
        
    }
}

class Kopek: Hayvan {
    override func sesCikar() {
        print("Hav hav.")
    }
}

class Kedi: Hayvan {
    override func sesCikar() {
        print("miyav miyav.")
    }
}

class Kurt: Kopek {
    override func sesCikar() {
        print("uuuuuuuuu.")
    }
}
