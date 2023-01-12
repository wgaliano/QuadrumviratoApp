//
//  CategoriesView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CategoriesView: View {
    var categories = Category.getCategories()
    var body: some View {
        NavigationStack {
            VStack {
                
                GeometryReader { g in
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 16) {
                            
                            ForEach(categories) { category in
                                CategoryCardView (category: category)
                            }
                            
                        }.padding()
                    }
                }
            }.navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
