//
//  DatabaseHelper.swift
//  45-TodoApp
//
//  Created by MAC on 1.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataBaseHelper {
    
    static let shareInstance = DataBaseHelper()
    
    func save(name:String, isDone: Bool){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let instance = TaskEntity(context: managedContext)
        instance.name = name
        instance.isdone = isDone
        
        do {
            print("saved.")
            try managedContext.save()
           
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func deleteData(name: String){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TaskEntity")
        fetchRequest.predicate = NSPredicate(format: "name = %@", name)
       
        do
        {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectToDelete = test[0] as! NSManagedObject
            managedContext.delete(objectToDelete)
            
            do{
                print("deleted.")
                try managedContext.save()
            }
            catch
            {
                print(error)
            }
            
        }
        catch
        {
            print(error)
        }
    }
    
    func fetch() -> [TaskEntity] {
        
         var fetchingImage = [TaskEntity]()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return fetchingImage }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TaskEntity")
        
        do {
            print("All data.")
            fetchingImage = try managedContext.fetch(fetchRequest) as! [TaskEntity]
        } catch {
            print(error)
        }
        
        return fetchingImage
    }
    
    func update(name:String, isdone: Bool){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TaskEntity")
        let predicate = NSPredicate(format: "name = %@", name)
        fetchRequest.predicate = predicate
       
        do{
            let foundTasks = try managedContext.fetch(fetchRequest) as! [TaskEntity]
            foundTasks.first?.isdone = isdone
            try managedContext.save()
            print("updated.")
        }catch{
                print("update error.")
            }
        }
    
}
