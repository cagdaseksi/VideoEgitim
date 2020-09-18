//
//  ViewController.swift
//  45-TodoApp
//
//  Created by MAC on 1.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var taskStore = [[TaskEntity](), [TaskEntity]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    func getData() {
        
        let tasks = DataBaseHelper.shareInstance.fetch()
        
        taskStore = [tasks.filter{$0.isdone == false}, tasks.filter{$0.isdone == true}]
        
        tableView.reloadData()
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add Task", message: nil, preferredStyle: .alert)
        
        let addAction = UIAlertAction(title: "Add", style: .default) { _ in
            
            // save
            
            guard let name = alert.textFields?.first?.text else { return }
            
            //print(name)
            DataBaseHelper.shareInstance.save(name: name, isDone: false)
            self.getData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addTextField{ textField in
            
            textField.placeholder = "Enter task name..."
            
        }
        
        alert.addAction(addAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "To-do" : "Done"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return taskStore.count // 2 dönücek.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskStore[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskStore[indexPath.section][indexPath.row].name
        
        return cell
    }
    
}

extension ViewController {
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .normal, title: nil) { (action, sourceView, completionHandler) in
            
            let row = self.taskStore[indexPath.section][indexPath.row]
            
            DataBaseHelper.shareInstance.deleteData(name: row.name!)
            
            self.getData()
            
        }
        
        deleteAction.image = UIImage(named: "trash-24.png")
        deleteAction.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    //left
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let doneAction = UIContextualAction(style: .normal, title: nil) { (action, sourceView, completionHandler) in
            
            let row = self.taskStore[0][indexPath.row]
            
            DataBaseHelper.shareInstance.update(name: row.name!, isdone: true)
            
            self.getData()
            
        }
        
        doneAction.image = UIImage(named: "checkmark-24.png")
        doneAction.backgroundColor = #colorLiteral(red: 0.231372549, green: 0.7411764706, blue: 0.6509803922, alpha: 1)
        
        return indexPath.section == 0 ? UISwipeActionsConfiguration(actions: [doneAction]) : nil
    }
    
}









