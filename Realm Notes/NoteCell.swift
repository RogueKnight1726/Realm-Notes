//
//  NoteCell.swift
//  Realm Notes
//
//  Created by Swathy on 21/08/17.
//  Copyright © 2017 Swathy. All rights reserved.
//

import UIKit

class NoteCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10.0
    }
    
    //Required
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
