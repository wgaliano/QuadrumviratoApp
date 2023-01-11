//
//  Recipe.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import Foundation

struct Recipe: Identifiable, Hashable {
    
    let id = UUID()
    let name: String // name = imageString
    let ingredients: [String]
    
}

let recipes: [Recipe] = [
    Recipe(name: "Tuna with Potatoes", ingredients: ["Tonno","Patate"]),
    Recipe(name: "Insalata di tonno e fagioli", ingredients: ["Tonno", "Fagioli"])
]

