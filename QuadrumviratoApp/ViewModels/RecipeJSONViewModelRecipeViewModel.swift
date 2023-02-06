//
//  DiscoverView-ViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 18/01/23.
//

import Foundation
import SwiftUI

@MainActor
class RecipeJSONViewModel: ObservableObject {
    
    @Published var recipes: RecipeJSON?
    let decoder = JSONDecoder()
    var urlComponents = URLComponents(string: "https://api.edamam.com")
    
    func getHit() async {
        do {
            urlComponents?.path = "/api/recipes/v2"
            urlComponents?.queryItems = [
                URLQueryItem(
                    name: "type",
                    value: "public"
                ),
                URLQueryItem(
                    name: "q",
                    value: "Chicken Vesuvio"
                ),
                URLQueryItem(
                    name: "app_id",
                    value: "56865ab5"),
                URLQueryItem(
                    name: "app_key",
                    value: "acc726d73c9fd2a4699a0aca660d1eb6"
                )
            ]
            
            let url = urlComponents?.url
            let request = URLRequest(url: url!)
            let (data, _) = try await URLSession.shared.data(for: request)
            self.recipes = try decoder.decode(RecipeJSON.self, from: data)
            print(self.recipes?.count ?? 0)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    static func hitToArray() {
        
    }
}
