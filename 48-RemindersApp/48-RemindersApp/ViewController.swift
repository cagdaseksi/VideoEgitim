//
//  ViewController.swift
//  48-RemindersApp
//
//  Created by MAC on 2.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var reminders = [Reminder]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: Any) {
        
        guard let vc = storyboard?.instantiateViewController(identifier: "AddViewController") as? AddViewController else { return }
        
        vc.title = "New Reminder"
        
        vc.completion = { (title, body, date) in
            
            DispatchQueue.main.async {
                
                self.navigationController?.popToRootViewController(animated: true)
                
                let newReminder = Reminder(title: title, body: body, date: date, identifier: "id_\(title)")
                
                self.reminders.append(newReminder)
                
                self.myTableView.reloadData()
                
                let content = UNMutableNotificationContent()
                content.title = title
                content.sound = .default
                content.body = body
                
                let targetDate = date
                
                let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate), repeats: false)
                
                let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
                    
                    if error != nil {
                        print("wrong!!!!")
                    }
                    
                })
                
                
            }
            
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let row = reminders[indexPath.row]
        
        cell.textLabel?.text = row.title
        
        let formater = DateFormatter()
        formater.dateFormat = "dd, MMMM, YYYY"
        cell.detailTextLabel?.text = formater.string(from: row.date)
        
        return cell
        
    }
    
}

extension ViewController {
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: nil) { (action, sourceView, completionHandler) in
            
            self.reminders.remove(at: indexPath.row)
            self.myTableView.reloadData()
            
            completionHandler(true)
            
        }
        
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
        
    }
    
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let doneAction = UIContextualAction(style: .destructive, title: nil) { (action, sourceView, completionHandler) in
            
            let reminder = self.reminders[indexPath.row]
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
                
                if success {
                    
                    self.scheduletest(title: reminder.title, body: reminder.body)
                    
                }else if error != nil {
                    print(error?.localizedDescription ?? "error")
                }
                
            })
            
            completionHandler(true)
            
        }
        
        doneAction.image = UIImage(systemName: "checkmark")
        doneAction.backgroundColor = #colorLiteral(red: 0.231372549, green: 0.7411764706, blue: 0.6509803922, alpha: 1)
        
        return UISwipeActionsConfiguration(actions: [doneAction])
        
    }
    
    func scheduletest(title: String, body: String) {
        
        let content = UNMutableNotificationContent()
        content.title = title
        content.sound = .default
        content.body = body
        
        let targetDate = Date().addingTimeInterval(10)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate), repeats: false)
        
        let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            
            if error != nil {
                print("wrong!!!!")
            }
            
        })
        
        
    }
    
}

struct Reminder {
    var title: String
    var body: String
    var date: Date
    let identifier: String
}
