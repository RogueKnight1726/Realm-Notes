//
//  NotesContainer.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit

class NotesContainer: UIView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let noteCellIdentifier = "NoteCellIdentifier"
    @IBOutlet weak var notesCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.black
        
        self.notesCollectionView.delegate = self
        self.notesCollectionView.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.noteCellIdentifier, for: indexPath) as! NoteCell
        cell.backgroundColor = UIColor.blue
        return cell
    }
}
