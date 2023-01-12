//
//  ContentView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView (.vertical, showsIndicators: false) {
                GeometryReader { g in
                    VStack {
                        FeaturedView()
                        CategoriesView()
                        Text("Rido poco")
                    }
                }
            }
        }
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

