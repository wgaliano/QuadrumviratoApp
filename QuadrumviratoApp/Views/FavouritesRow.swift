//
//  FavouritesRow.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 26/01/23.
//

import SwiftUI

struct FavouritesRow: View {
    var recipe: RecipeEntity
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(Array(recipe.ingredients as? Set<IngredientEntity> ?? []), id: \.self) { ingredient in
                    Text("\(ingredient.info ?? "")" )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(recipe.name!)
        }
    }
}

// struct FavouritesRow_Previews: PreviewProvider {
//    static var previews: some View {
//        FavouritesRow()
//    }
// }
