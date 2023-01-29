//
//  RecipeSheetView.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 12/01/23.
//

import SwiftUI

struct RecipeSheetView: View {
    var hit: Hit
    @Environment(\.presentationMode) var presentationMode
    @State private var closeModal = false
    @State private var favouritesButton: Bool = false
    @EnvironmentObject var coreDataVM: CoreDataViewModel
    
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
                        ForEach(hit.recipe.ingredientLines.indices) {
                            Text(hit.recipe.ingredientLines[$0])
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
                .navigationTitle(hit.recipe.label)
                .navigationBarItems(trailing: Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                })
                .navigationBarItems(leading: Button {
                    favouritesButton.toggle()
                    if(favouritesButton == true) {
                        var recipeIngredients: [IngredientEntity] = []
                        
                        for ingredientInfo in hit.recipe.ingredientLines {
                            if(!coreDataVM.checkIngredients(info: ingredientInfo)) {
                                coreDataVM.addIngredient(info: ingredientInfo)
                            }
                            
                            recipeIngredients.append(coreDataVM.ingredients.first(where: { coreDataIngredient in
                                coreDataIngredient.info == ingredientInfo
                            })!)
                        }
                        
                        coreDataVM.addRecipe(id: hit.id, name: hit.recipe.label, calories: hit.recipe.calories, totalWeight: hit.recipe.totalWeight, ingredients: recipeIngredients)
                    }
                } label: {
                    if favouritesButton {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                })
            }
        }
    }
}

//struct RecipeSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeSheetView(hit:)
//    }
//}
