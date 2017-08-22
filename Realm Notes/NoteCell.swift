//
//  NoteCell.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit

class NoteCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbNail: UIImageView!
    @IBOutlet weak var noteText: UILabel!
    
    
    var note: Note?{
        didSet{
            
            self.noteText.text = note?.text
            if self.thumbNail == nil {
                self.thumbNail.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            }
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10.0
    }
    
    //Required
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
