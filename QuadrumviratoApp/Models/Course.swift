//
//  Course.swift
//  QuadrumviratoApp
//
//  Created by Francesco Merola on 13/01/23.
//

import Foundation

struct Course: Hashable, Identifiable {
    let id = UUID()
    let name: String
    
    static func getCourses () -> [Course] {
        return [
            Course (name: "Entrée"),
            Course (name: "Main")
        ]
    }
}
