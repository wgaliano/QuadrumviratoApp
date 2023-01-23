//
//  DiscoverView-ViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 18/01/23.
//

//class RecipeViewModel: ObservableObject {
//
//    @Published var recipes: [Recipe] = [
//        Recipe(name: "Tuna with Potatoes", ingredients: [Ingredient(name: "Tuna"),Ingredient(name: "Potatoes")], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", media: ["yguy"], process: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
//        Recipe(name: "Tuna salad", ingredients: [Ingredient(name: "Tuna"),Ingredient(name: "Beans"), Ingredient(name: "Salad")], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", media: ["yguy"], process: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
//    ]
//}

import Foundation
import SwiftUI

@MainActor
class RecipeJSONViewModel: ObservableObject {
    
    @Published var recipes : RecipeJSON?
    let decoder = JSONDecoder()
    var urlComponents = URLComponents(string: "https://api.edamam.com")
    
    func getHit() async {
        do {
            urlComponents?.path = "/api/recipes/v2"
            urlComponents?.queryItems = [
                URLQueryItem (name: "type",
                              value:"public"),
                URLQueryItem (name: "q",
                              value:"Chicken Vesuvio"),
                URLQueryItem (name: "app_id",
                              value:"56865ab5"),
                URLQueryItem (name: "app_key",
                              value:"acc726d73c9fd2a4699a0aca660d1eb6")
            ]
            
            let url = urlComponents?.url
            let request = URLRequest(url: url!)
            let (data,_) = try await URLSession.shared.data(for: request)
            self.recipes = try decoder.decode(RecipeJSON.self, from: data)
            print(self.recipes?.count ?? 0)
        } catch {
            print (error.localizedDescription)
        }
    }
    
    static func hitToArray(){
        
    }
}

