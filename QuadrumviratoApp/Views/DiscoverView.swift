//
//  ContentView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct DiscoverView: View {
    @ObservedObject var recipeVM = RecipeJSONViewModel()
    @ObservedObject var monitor = NetworkMonitor()
    
    @State private var selectedHit: Hit?
    @State private var showingRecipeSheet = false
    
    @State private var loadedRecipes: Bool = false
    
    var body: some View {
        NavigationStack {
            if monitor.isConnected {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            if recipeVM.recipes?.hits != nil {
                                ForEach((recipeVM.recipes?.hits)!) { currHit in
                                    Button {
                                        showingRecipeSheet.toggle()
                                        selectedHit = currHit
                                    } label: {
                                        FeaturedCardView(hit: currHit)
                                            .shadow(color: Color.black.opacity(0.2), radius: 4)
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
            } else {
                Image(systemName: "wifi.slash")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: UIScreen.main.bounds.width/3,
                        height: UIScreen.main.bounds.height/3
                    )
            }
        }
        .task {
            if !loadedRecipes {
                await recipeVM.getHit()
                loadedRecipes = true
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
