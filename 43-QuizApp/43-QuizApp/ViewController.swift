//
//  ViewController.swift
//  43-QuizApp
//
//  Created by MAC on 29.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        let score = UserDefaults.standard.string(forKey: "score") ?? "0"
        
        lblScore.text = "Last Score: \(score)"
        
    }

}

