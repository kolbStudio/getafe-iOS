//
//  Teacher.swift
//  iOSNewProyect
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

enum TeacherType: String {
    case intern
    case extern
}


import Foundation

class Teacher: Hashable {
    
    // Equatable protocol implementation
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    // Hashable protocol implementation
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    /*var hashValue: Int {
     return ObjectIdentifier(self).hashValue
     }*/
    
    
    var name: String?
    var email: String?
    var type: TeacherType?
    
    convenience init(name: String, email: String? = nil, type: TeacherType? = nil) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
    }}
