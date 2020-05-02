//
//  ResultViewController.swift
//  46-SansOyunlariApp
//
//  Created by MAC on 2.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var numbers = [String]()
    var date:Date!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.label.text = numbers[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getNumbers(date: date)
    }
    
    func getNumbers(date: Date){
        
        let url = URL(string: "http://millipiyango.gov.tr/sonuclar/cekilisler/onnumara/\(date.value).json")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("error: \(error)")
            }else {
                
                if let response = response as? HTTPURLResponse {
                    print("status code: \(response.statusCode)")
                }
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                        
                        //print(json)
                        
                        guard let data = json["data"] as? [String: Any] else {return}
                        
                        if let rakamlarNumaraSirasi = data["rakamlarNumaraSirasi"] as? String {
                            
                            let selectedNumbers = rakamlarNumaraSirasi.components(separatedBy: "-")
                            self.numbers = selectedNumbers
                        }
                        
                        DispatchQueue.main.async {
                            
                            if let week = data["hafta"] as? Int {
                                self.navigationController?.navigationBar.topItem?.title = "\(week) Hafta Sonuçları"
                            }
                            
                            self.myCollectionView.reloadData()
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
