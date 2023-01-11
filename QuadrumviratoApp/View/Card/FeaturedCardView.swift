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
        VStack {
            Image("\(recipe.name)")
                .resizable()
        }
        .cornerRadius(20)
        .padding()
        .frame(width: 390,height: 250)
    
    }
}

struct FeaturedCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let recipe: Recipe = Recipe(name: "Tuna with Potatoes", ingredients: ["Tonno","Patate"])
        
        FeaturedCardView(recipe: recipe)
    }
}
