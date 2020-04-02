//
//  DetailViewController.swift
//  34-RealApp
//
//  Created by MAC on 3.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var photo = Photo([:])
    var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailTitle.text = photo.title
        
        if let url = URL(string: photo.url) {
            image.contentMode = .scaleAspectFill
            image.load(url: url)
        }
        
        loadLogo()
        getComments() 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailTableViewCell
        
        let row = comments[indexPath.row]
        
        //cell.detailImage.load(url: URL(string: row))
        cell.name.text = row.name
        cell.email.text = row.email
        
        return cell
        
    }
    
    func loadLogo() {
           
           if let logo = UIImage(named: "1.png") {
               let newLogo = Util.app.resizeImageWithAspect(image: logo, scaledToMaxWidth: 200, maxHeight: 50)
               let imageView = UIImageView(image: newLogo)
               self.navigationItem.titleView = imageView
           }
           
       }

       func getComments() {
        
        comments = []
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("error: \(error)")
            }else {
                
                if let response = response as? HTTPURLResponse {
                    print("status code: \(response.statusCode)")
                }
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: Any]] {
                        
                        for dic in json {
                            
                            self.comments.append(Comment(dic))
                            
                        }
                        
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                        
                        
                    }
                    
                }
                catch let error as NSError {
                    print("error: \(error.localizedDescription)")
                }
                
            }
            
            
        }
        task.resume()
        
    }

}
