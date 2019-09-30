//
//  TeacherViewCell.swift
//  iOSNewProyect
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import UIKit

class TeacherViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var View2 : UIView!
    @IBOutlet weak var label3 : UILabel!
    @IBOutlet weak var label4 : UILabel!
    @IBOutlet weak var image2 : UIImageView!
    
    
    override func prepareForReuse() {
        image2.image = nil
        label3.text = nil
        label4.text = nil
        
    }
    
    
     override func awakeFromNib() {
           super.awakeFromNib()
           
           View2.layer.cornerRadius = 8.0
           View2.configureShadows()
       }
    
    
    func configureCell(teacher: Teacher) {
        image2.image = UIImage (named: teacher.avatar ?? "")
        label3.text = teacher.name
        label4.text = teacher.email
    }
    
    
}
    
