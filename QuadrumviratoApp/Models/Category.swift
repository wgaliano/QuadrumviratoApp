//
//  Categories.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import Foundation

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    
    static func getCategories() -> [Category]{
        return [
            Category(name: "Blue fish"),
            Category(name: "White fish")
        ]
    }
}


