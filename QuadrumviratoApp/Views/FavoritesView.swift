//
//  FavoritesView.swift
//  QuadrumviratoApp
//
//  Created by Francesco Merola on 16/01/23.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var recipeVM = RecipeJSONViewModel()
    
    @State private var selectedHit: Hit?
    @State private var showingRecipeSheet = false
    
    @State private var loadedRecipes: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        if(recipeVM.recipes?.hits != nil) {
                            ForEach((recipeVM.recipes?.hits)!) { currHit in
                                Button {
                                    print(recipeVM.recipes?.hits.count)
                                    showingRecipeSheet.toggle()
                                    selectedHit = currHit
                                } label: {
                                    FeaturedCardView(hit: currHit)
                                }
                                .sheet(item: $selectedHit) { selectedHit in
                                    RecipeSheetView(hit: selectedHit)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Favorites")
        }
        .task {
            if loadedRecipes == false {
                await recipeVM.getHit()
                loadedRecipes = true
            }
        }
    }
}

//struct FavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoritesView()
//    }
//}
