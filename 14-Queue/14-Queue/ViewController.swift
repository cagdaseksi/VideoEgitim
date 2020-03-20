//
//  ViewController.swift
//  14-Queue
//
//  Created by MAC on 19.03.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var q = Queue<String>()
        
        q.enqueue("Ada")
        q.enqueue("Burak")
        q.enqueue("Elif")
        q.enqueue("Haluk")
        
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
        print(q.dequeue())
        q.enqueue("Çağdaş")
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
        
    }


}

struct Queue<T> {
    // Queue Oluşturma
    var array = [T]()
    
    // Enqueue İşlemi
    public mutating func enqueue(_ element: T){
        array.append(element)
    }
    
    //Dequeue İşlemi
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        return array.removeFirst()
    }
    
    // Computed property
    
    // ilk elemanı bulma
    public var front: T? {
        return array.first
    }
    
    // son elemanı bulma
    public var rear: T? {
        return array.last
    }
    
    // boş kontrolü
    public var isEmpty:Bool {
        return array.isEmpty
    }
    
    // Queue eleman sayısı
    public var count:Int {
        return array.count
    }

}
