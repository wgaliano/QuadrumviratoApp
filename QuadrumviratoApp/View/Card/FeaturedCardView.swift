//
//  CardView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct FeaturedCardView: View {
    
    let recipe: Recipe
    
    var body: some View {
        Image("\(recipe.name)")
            .resizable()
            .scaledToFill()
            .frame(
                width: UIScreen.main.bounds.width*(3.5/4),
                height: //UIScreen.main.bounds.height*(1.8/4.8)
                UIScreen.main.bounds.height*(0.6)
            )
            .cornerRadius(20)
    }
}

struct FeaturedCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let recipe: Recipe = Recipe(name: "Tuna with Potatoes", ingredients: [Ingredient(name: "Tonno"),Ingredient(name: "Patate")], description: "jhbjh", media: ["yguy"], process: "ufytcv")
        
        FeaturedCardView(recipe: recipe)
    }
}
