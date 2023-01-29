//
//  FavoritesView.swift
//  QuadrumviratoApp
//
//  Created by Francesco Merola on 16/01/23.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var coreDataVM: CoreDataViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(coreDataVM.recipes) { recipe in
                        NavigationLink {
                            FavouritesRow(recipe: recipe)
                        } label: {
                            Text(recipe.name ?? "")
                        }
                    }
                    .onDelete(perform: coreDataVM.deleteRecipe)
                }
            }
            .navigationTitle("Favourites")
        }
    }
}

//struct FavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoritesView()
//    }
//}
