//
//  StudentViewCell.swift
//  iOSNewProyect
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import UIKit

class StudentViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var View1 : UIView!
    @IBOutlet weak var label1 : UILabel!
    @IBOutlet weak var label2 : UILabel!
    @IBOutlet weak var image1 : UIImageView!
    
    
    override func prepareForReuse() {
        image1.image = nil
        label1.text = nil
        label2.text = nil
        
    }
    
    func configureCell(student: Student) {
        // TODO: Add Student image
        label1.text = student.name
        label2.text = student.email
    }
    
    
}
    


