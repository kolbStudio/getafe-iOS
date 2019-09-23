//
//  DefaultData.swift
//  iOSNewProyect
//
//  Created by Dev2 on 23/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import Foundation

let defaultStudents = [Student(name: "Diego",
                               email: "diego@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1973,
                                                                                     month: 4))),
                       Student(name: "JoséR",
                               email: "JoseR@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                     month: 3))),
                       Student(name: "Mireya",
                               email: "Mireya@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1951,
                                                                                     month: 11))),
                       Student(name: "Amalio",
                               email: "Amalio@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1948,
                                                                                     month: 3))),
                       Student(name: "Laurys",
                               email: "Laurys@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1993,
                                                                                     month: 2))),
                       Student(name: "Maria Laura",
                               email: "MariaL@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 2017,
                                                                                     month: 3))),
                       Student(name: "Carmen",
                               email: "carmen@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1923,
                                                                                     month: 2)))]

let defaultTeachers = [Teacher(name: "Juan",
                               email: "juan@gmail.com",
                               type: .intern),
                       Teacher(name: "Lucía",
                               email: "lucia@gmail.com",
                               type: .extern),
                       Teacher(name: "Paula",
                               email: "paula@gmail.com",
                               type: .extern),
                       Teacher(name: "Javier",
                               email: "javier@gmail.com",
                               type: .intern),
                       Teacher(name: "Marta",
                               email: "marta@gmail.com",
                               type: .intern)]

let defaultSubjects = [Subject(name: "Android",
                               teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                       Subject(name: "iOS",
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                       Subject(name: "JavaScript",
                               teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                       Subject(name: "Python",
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                       Subject(name: "Polymer",
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false})]
