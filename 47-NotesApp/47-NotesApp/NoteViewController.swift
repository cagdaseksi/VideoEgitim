//
//  NoteViewController.swift
//  47-NotesApp
//
//  Created by MAC on 2.05.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textViewSubTitle: UITextView!
    
    public var noteTitle = String()
    public var note = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTitle.text = noteTitle
        textViewSubTitle.text = note
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
