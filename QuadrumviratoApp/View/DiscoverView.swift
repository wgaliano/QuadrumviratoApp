
//
//  ContentView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct DiscoverView: View {
    var recipes: [Recipe] = Recipe.getRecipes()
    @State private var selectedRecipe: Recipe?
    @State private var showingRecipeSheet = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: -8) {
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack () {
                        ForEach(recipes) { recipe in
                            Button{
                                showingRecipeSheet.toggle()
                                selectedRecipe = recipe
                            } label: {
                                FeaturedCardView(recipe: recipe)
                            }
                            .padding(.trailing)
                            .sheet(item: $selectedRecipe) { selectedRecipe in
                                RecipeSheetView(recipe: selectedRecipe)
                            }
                        }
                    }.padding()
                }
            }
            .navigationTitle("Discover")
        }
    }
}



struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

