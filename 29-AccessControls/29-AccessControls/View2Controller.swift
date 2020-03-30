//
//  View2Controller.swift
//  29-AccessControls
//
//  Created by MAC on 30.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let ac = accessControl()
        
        ac.myMessage()
        ac.privateMessage()
        
        
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
