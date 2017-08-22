//
//  HomeController.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    let segueString = "AddNewNoteSegue"
    @IBOutlet weak var notesContainer: NotesContainer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNewNote(_ sender: Any) {
        self.performSegue(withIdentifier: self.segueString, sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.notesContainer.getDataFromRealm()
    }
    
}
