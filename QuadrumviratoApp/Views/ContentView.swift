//
//  TabBarView.swift
//  QuadrumviratoApp
//
//  Created by Francesco Merola on 16/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DiscoverView()
                .tag(0)
                .tabItem {
                    Image (systemName: "fork.knife")
                    Text("Discover")
                }
            
            CategoriesView()
                .tag(1)
                .tabItem {
                    Image (systemName: "magnifyingglass")
                    Text("Search")
                }
            
            FavoritesView()
                .tag(2)
                .tabItem {
                    Image (systemName: "suit.heart")
                    Text("Favorites")
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
