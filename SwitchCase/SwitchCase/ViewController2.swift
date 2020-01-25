//
//  ViewController2.swift
//  SwitchCase
//
//  Created by MAC on 25.01.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //closed range operator
        
        for number in 5...9 {
            print("range: \(number)")
        }
        
        // half-open range Operator
        
        for n1 in 3..<7 {
            print("half-open: \(n1)")
        }
        
        // One-sided Ranges //tek taraflı aralıklar
        
        let tvSeries = ["Breaking Bad", "How I met your mother", "Fringe", "Westworld", "Doom Patrol", "Barry", "Manifest"]
        
        // diziler index numarası 0 dan başlar.
        
        let part1 = tvSeries[..<3]
        print("tv-series:\(part1)")
        
        let part2 = tvSeries[3...]
        print("tv-series:\(part2)")
        
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        //1990
        
        let currentYear = 2020
        let newYear = textfield.text ?? ""
        
        guard let n1 = Int(newYear) else {
            label.text = "Lütfen bir rakam giriniz."
            return
        }
        
        let age = currentYear - n1 // yaş bulundu.
        
        switch age {
        case 0 ..< 18:
            label.text = "Enerjimiz ve zamanımız var ama paramız yok."
        case 18 ..< 70:
            label.text = "Enerjimiz ve paramız var ama zamanımız yok."
        default:
            label.text = "Zamanımız ve paramız var ama enerjimiz yok."
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
