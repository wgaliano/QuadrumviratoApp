
//
//  ContentView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct DiscoverView: View {
    @ObservedObject var recipeVM = RecipeJSONViewModel()
    
    @State private var selectedHit: Hit?
    @State private var showingRecipeSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        if(recipeVM.recipes?.hits != nil) {
                            
                            ForEach((recipeVM.recipes?.hits)!) { currHit in
                                Button {
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
            .navigationTitle("Discover")
        }
        .task {
            await recipeVM.getHit()
        }
    }
}


struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

