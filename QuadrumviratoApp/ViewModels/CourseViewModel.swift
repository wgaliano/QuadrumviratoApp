//
//  CourseViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 18/01/23.
//

import Foundation

class CourseViewModel: ObservableObject {
    
    @Published var courses: [Course] = [
        Course (name: "Entrée", image: "Entrée"),
        Course (name: "Main", image: "Main")
    ]
}
