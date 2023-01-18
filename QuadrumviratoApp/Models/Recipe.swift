//
//  Recipe.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import Foundation

struct Recipe: Identifiable {
    
    let id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let description: String
    let media: [String]
    let process: String
}


