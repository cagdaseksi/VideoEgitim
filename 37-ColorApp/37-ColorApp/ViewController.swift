//
//  ViewController.swift
//  37-ColorApp
//
//  Created by MAC on 20.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ColorCollectionViewCell
        
        //cell.label.backgroundColor = randomColor()
        cell.label.text = "\(indexPath.row + 1)"
        
        cell.backgroundColor = randomColor()
        
        return cell
    }
       
    func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        //print(CGFloat(drand48()))
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
    }

}

