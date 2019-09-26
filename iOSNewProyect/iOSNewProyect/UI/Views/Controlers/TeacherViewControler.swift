//
//  TeacherViewControler.swift
//  iOSNewProyect
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//


import UIKit


class TeacherViewControler: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView : UITableView!
    
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
}

extension TeacherViewControler: UITableViewDataSource, UITableViewDelegate {
    
    // Configure tableView with default options
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier:
            "TeacherViewCell",
                                                 for: indexPath) as?
        TeacherViewCell else {
            return UITableViewCell()
        }
        
        if (indexPath.row < defaultTeachers.count) {
          let teacher = defaultTeachers[indexPath.row]
          cell.configureCell(teacher: teacher)
        }
        
        return cell
    }
    
   
}
