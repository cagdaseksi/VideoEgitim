//
//  DetailViewController.swift
//  42-CurrencyApp
//
//  Created by MAC on 29.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let curreny = list[indexPath.row]
        
        cell.label.text = "\(curreny.code): \(curreny.value)"
        
        if let img = UIImage(named: curreny.image) {
            cell.img.image = img
        }else {
            cell.img.image = UIImage(named: "default.png")
        }
        
        return cell
        
    }
    

    var list = [Currency]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        getData()
        
    }
    
    func getData() {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil {
                print(error?.localizedDescription)
            }else {
                
                if data != nil {
                    
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        print(jsonResponse)
                        
                        DispatchQueue.main.async {
                            
                            let array = Array(jsonResponse["rates"] as! [String : Any])

                            for (key, value) in array {
                               
                               var entity = Currency()
                               entity.code = key
                               entity.value = value as! Double
                               self.list.append(entity)
                            }

                            print(self.list.count)
                            self.tableView.reloadData()
                            
                        }
                        
                    } catch {
                        print("error")
                    }
                    
                }
                
            }
            
        }
        task.resume()
        
    }


}
