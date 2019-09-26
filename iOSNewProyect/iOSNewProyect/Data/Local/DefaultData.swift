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
                                                                                    month: 4)),
                               avatar:"img_student_6"),
                       Student(name: "JoséR",
                               email: "JoseR@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                     month: 3)),
                               avatar:"img_student_2"),
                       Student(name: "Mireya",
                               email: "Mireya@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1951,
                                                                                     month: 11)),
                               avatar:"img_student_4"),
                       Student(name: "Amalio",
                               email: "Amalio@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1948,
                                                                                     month: 3)),
                               avatar:"img_student_3"),
                       Student(name: "Laurys",
                               email: "Laurys@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1993,
                                                                                     month: 2)),
                               avatar:"img_student_5"),
                       Student(name: "Maria Laura",
                               email: "MariaL@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 2017,
                                                                                     month: 3)),
                               avatar:"img_student_1")]

let defaultTeachers = [Teacher(name: "Juan",
                               email: "juan@gmail.com",
                               type: .intern, avatar:"img_teacher_1"),
                       Teacher(name: "Lucía",
                               email: "lucia@gmail.com",
                               type: .extern, avatar:"img_teacher_2"),
                       Teacher(name: "Paula",
                               email: "paula@gmail.com",
                               type: .extern, avatar:"img_teacher_3"),
                       Teacher(name: "Javier",
                               email: "javier@gmail.com",
                               type: .intern, avatar:"img_teacher_4"),
                       Teacher(name: "Marta",
                               email: "marta@gmail.com",
                               type: .intern, avatar:"img_teacher_5")]

let defaultSubjects = [Subject(name: "Android",
                               teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("a") ?? false}, avatar:"img_subject_android"),
                       Subject(name: "iOS",
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false}, avatar:"img_subject_ios"),
                       Subject(name: "JavaScript",
                               teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("i") ?? false}, avatar:"img_subject_javascript"),
                       Subject(name: "Python",
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false}, avatar:"img_subject_python"),
                       Subject(name: "Dart",
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false}, avatar:"img_subject_dart")]
