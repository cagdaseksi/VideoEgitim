//
//  DetailViewController.swift
//  33-StarApp
//
//  Created by MAC on 31.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var userDetail = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myLabel.text = userDetail.firstName + " " + userDetail.lastName
        myImageView.image = userDetail.picture
        
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
