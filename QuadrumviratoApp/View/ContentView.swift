
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
            ScrollView {
                VStack {
                    
                    FeaturedView()
                    
                    CategoriesView()
                    
                    CoursesView()
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

