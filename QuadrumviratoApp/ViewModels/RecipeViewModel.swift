//
//  DiscoverView-ViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 18/01/23.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    @Published var recipes: [Recipe] = [
        Recipe(name: "Tuna with Potatoes", ingredients: [Ingredient(name: "Tuna"),Ingredient(name: "Potatoes")], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", media: ["yguy"], process: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Recipe(name: "Tuna salad", ingredients: [Ingredient(name: "Tuna"),Ingredient(name: "Beans"), Ingredient(name: "Salad")], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", media: ["yguy"], process: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ]
}
