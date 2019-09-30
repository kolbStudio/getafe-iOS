//
//  UIViewUtilControler.swift
//  
//
//  Created by Dev2 on 27/09/2019.
//

import UIKit




class DetailsViewControler: UIViewController {
   
   // MARK: DECLARATION OF IBOUTLET
    @IBOutlet weak var view1 : UIView!
    @IBOutlet weak var image1 : UIImageView!
    @IBOutlet weak var label1 : UILabel!
    @IBOutlet weak var label2 : UILabel!
    @IBOutlet weak var dataTitle1: UILabel!
    @IBOutlet weak var dataTitle2 : UILabel!
    @IBOutlet var dataCollectionView: Array<UICollectionView>!
    @IBOutlet weak var deleteButton: UIButton!

 
    
    var data: Subject?
    
    
   override func viewDidLoad() {
    super.viewDidLoad()
    
    configure(image: data?.avatar)
    configure(title: data?.name)
    configure(subtitle: "")
    configure(section1: "Teachers")
    configure(section2: "Students")
    }
    
    
    func configure(image: String?) {
        self.image1.image = UIImage (named: image ?? "")
       
        
    }
    func configure(title: String?) {
        
         label1.text = title
    }
    func configure(subtitle: String?) {
        
        label2.text = subtitle
    }
    func configure(section1: String?) {
        
        dataTitle1.text = section1
    }
    
    func configure(section2: String?) {
        
        dataTitle2.text = section2
    }
    
    func configureCollectionsView() {
    dataCollectionView.forEach{ collectionView in
        
    collectionView.dataSource = self
        
    collectionView.delegate = self
    }
        
        
    }
    
}

extension DetailsViewControler: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
            case 0:
                return data?.teachers.count ?? 0
            
            case 1:
                return data?.students.count ?? 0
            
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
        
    }
}

 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width - 16.0) / 2
        
        return CGSize (width: size, height: size)
    }
    


