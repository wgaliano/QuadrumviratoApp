//
//  RecipeSheetView.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 12/01/23.
//

import SwiftUI

struct RecipeSheetView: View {
    var recipe: Recipe
    @Environment(\.presentationMode) var presentationMode
    @State private var closeModal = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //section ingredients
                    VStack {
                        Text("Ingredients")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        VStack (spacing: -10){
                            ForEach(recipe.ingredients) { ingredient in
                                HStack {
                                    Spacer()
                                        .frame(width: 25)
                                    Circle()
                                        .frame(width: 10)
                                        .offset(y:-10)
                                    Text("\(ingredient.name)\n")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    //section description
                    VStack {
                        Text("Brief description")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(recipe.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    //section process
                    VStack {
                        Text("Process")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(recipe.process)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
                .navigationTitle(recipe.name)
                .navigationBarItems(trailing: Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                })
            }
        }
    }
}

struct RecipeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        let recipe: Recipe = Recipe(name: "Tuna with Potatoes", ingredients: [Ingredient(name: "Tuna"),Ingredient(name: "Potatoes")], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", media: ["yguy"], process: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        
        RecipeSheetView(recipe: recipe)
    }
}
