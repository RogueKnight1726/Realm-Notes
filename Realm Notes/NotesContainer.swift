//
//  NotesContainer.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit
import RealmSwift


class NotesContainer: UIView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let realm = try! Realm()
    let noteCellIdentifier = "NoteCellIdentifier"
    var storedValues = List<Note>()
    @IBOutlet weak var notesCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.black
        
        self.notesCollectionView.delegate = self
        self.notesCollectionView.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return self.storedValues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.noteCellIdentifier, for: indexPath) as! NoteCell
        cell.note = self.storedValues[indexPath.row]
        return cell
    }
    
    public func getDataFromRealm(){
        let valueList: Results<Note> = {self.realm.objects(Note.self)}()
        self.storedValues = List(valueList)
        self.notesCollectionView.reloadData()
    }
}
