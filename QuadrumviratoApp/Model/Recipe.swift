//
//  Recipe.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import Foundation

struct Recipe: Identifiable{
    
    let id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let description: String
    let media: [String]
    let process: String
    
    static func getRecipes () -> [Recipe]{
        return [
            Recipe(name: "Tuna with Potatoes", ingredients: [Ingredient(name: "Tonno"),Ingredient(name: "Patate")], description: "jhbjh", media: ["yguy"], process: "ufytcv"),
            Recipe(name: "Insalata di tonno e fagioli", ingredients: [Ingredient(name: "Tonno"),Ingredient(name: "Fagioli")], description: "jhbjh", media: ["yguy"], process: "ufytcv")
            
        ]
    }
    
}


