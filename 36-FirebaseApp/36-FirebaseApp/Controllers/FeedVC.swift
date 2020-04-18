//
//  FeedVC.swift
//  36-FirebaseApp
//
//  Created by MAC on 17.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit
import Firebase

class FeedVC: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    var items = [ItemModel]()
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        retrieveItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let currentUser = Auth.auth().currentUser {
            navBar.topItem?.title = currentUser.email
        }
        retrieveItems()
        
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            Common.showAlert(title: "OK", message: "Çıkış başarılı", vc: self)
            navBar.topItem?.title = "List"
            retrieveItems()
        } catch {
            print("error")
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        
        let row = self.items[indexPath.row]
        
        cell.lblTitle.text = row.title
        cell.lblDesc.text = row.desc
        cell.lblCategory.text = row.type
        
        cell.btnStar.setImage(UIImage(systemName: row.like == 0 ? "star" : "star.fill"), for: .normal)
        cell.btnStar.tag = indexPath.row
        cell.btnStar.addTarget(self, action: #selector(btnStar), for: .touchUpInside)
        
        cell.btnComment.tag = indexPath.row
        cell.btnComment.addTarget(self, action: #selector(btnComment), for: .touchUpInside)
        
        cell.btnDelete.tag = indexPath.row
        cell.btnDelete.addTarget(self, action: #selector(btnDelete), for: .touchUpInside)
        cell.btnDelete.isHidden = !checkCurrentuser(email: row.email)
        
        return cell
    }

    @objc func btnStar(_ sender: UIButton){
        
        print(sender.tag)
        let myIndexPath = NSIndexPath(row: sender.tag, section: 0)
        let cell = tblView.cellForRow(at: myIndexPath as IndexPath) as! FeedTableViewCell
        
        cell.btnStar.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        updateItem(item: self.items[sender.tag])
        
    }
    
    @objc func btnComment(_ sender: UIButton){
        
        print(sender.tag)
        
    }
    
    @objc func btnDelete(_ sender: UIButton){
        
        print(sender.tag)
        deleteItem(item: self.items[sender.tag])
    }
    
    /* Retrieve Items */
    
    func retrieveItems() {
        
        DataService.dataService.ITEM_REF.observe(.value, with: { (snapshot: DataSnapshot?) in
            
            if let snapshots = snapshot?.children.allObjects as? [DataSnapshot] {
                
                self.items.removeAll()
                print(snapshots.count)
                for snap in snapshots {
                    
                    if let postDic = snap.value as? Dictionary<String, AnyObject> {
                        
                        let itemModel = ItemModel(key: snap.key, dictionary: postDic)
                        print(itemModel)
                        self.items.insert(itemModel, at: 0)
                        
                    }
                }
                
                self.tblView.reloadData()
                
            }
            
        })
        
    }
    
    func updateItem(item: ItemModel){
        
        DataService.dataService.ITEM_REF.child(item.key).updateChildValues(["like": item.like == 0 ? 1 : 0])
        
    }
    
    func deleteItem(item: ItemModel){
        
        DataService.dataService.ITEM_REF.child(item.key).removeValue { (error: Error?, ref: DatabaseReference) in
            
            if error != nil {
                
                Common.showAlert(title: "Hata", message: error?.localizedDescription ?? "Fatal error", vc: self)
                
            }else {
                Common.showAlert(title: "OK", message: "silme işlime başarılı bir şekilde tamamlanmıştır.", vc: self)
            }
            
        }
        
    }
    
    func checkCurrentuser(email: String) -> Bool {
        
        let currentUser = Auth.auth().currentUser
        
        return email == currentUser?.email
        
    }
    
}
