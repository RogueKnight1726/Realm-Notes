//
//  Note.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit
import RealmSwift

class Note: Object {
    
    dynamic var text = String()
    dynamic var id = String()
    dynamic var image = String()
    
    
    
    func save(){
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(self)
            }
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
}
