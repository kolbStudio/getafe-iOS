//
//  SubjectViewControler.swift
//  iOSNewProyect
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import UIKit


class SubjectViewControler: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var collectionView : UICollectionView!
    
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
      configureCollectionView()
    }
    
}

extension SubjectViewControler: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
                   "SubjectViewCell",
                                                        for: indexPath) as?
               SubjectViewCell else {
                  return UICollectionViewCell()
               }
               
               if (indexPath.row < defaultSubjects.count) {
                 let subject = defaultSubjects[indexPath.row]
                 cell.configureCell(subject: subject)
               }
               
               return cell
    }
    
    
    // Configure CollectionView with default options
   
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    
        
    }
    
   
}
