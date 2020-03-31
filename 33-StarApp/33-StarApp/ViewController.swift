//
//  ViewController.swift
//  33-StarApp
//
//  Created by MAC on 31.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var users = [User]()
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadData()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = users[indexPath.row]
        
        cell.textLabel?.text = row.firstName + " " + row.lastName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = users[indexPath.row]
        user = row
        self.performSegue(withIdentifier: "toDetail", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetail" {
            let desVC = segue.destination as! DetailViewController
            desVC.userDetail = self.user
        }
        
    }
    
    func loadData () {
        
        let user1 = User()
        user1.firstName = "Norman"
        user1.lastName = "Reedus"
        user1.picture = UIImage(named: "norman")!
        users.append(user1)
        
        let user2 = User()
        user2.firstName = "Lauren"
        user2.lastName = "Cohan"
        user2.picture = UIImage(named: "lauren")!
        users.append(user2)
        
        let user3 = User()
        user3.firstName = "Andrew"
        user3.lastName = "Lincoln"
        user3.picture = UIImage(named: "andrew")!
        users.append(user3)
        
        let user4 = User()
        user4.firstName = "Emily"
        user4.lastName = "Kinney"
        user4.picture = UIImage(named: "emily")!
        users.append(user4)
        
        let user5 = User()
        user5.firstName = "Chandler"
        user5.lastName = "Riggs"
        user5.picture = UIImage(named: "chandler")!
        users.append(user5)
        
    }

}

