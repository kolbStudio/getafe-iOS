//
//  SubjectViewCell.swift
//  iOSNewProyect
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import UIKit

class SubjectViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image2 : UIImageView!
    @IBOutlet weak var label3 : UILabel!
    
    
    
    override func prepareForReuse() {
        image2.image = nil
        label3.text = nil

        
    }
    
    func configureCell(subject: Subject) {
        image2.image = UIImage (named: subject.avatar ?? "")
        label3.text = subject.name
        
    }
    
    
}
    
