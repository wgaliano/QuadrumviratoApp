//
//  CategoriesView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CategoriesView: View {
    var categories = Category.getCategories()
    @State private var showCategoryModal: Bool = false
    @State private var selectedCategory: Category?
    var body: some View {
        NavigationStack {
            VStack (spacing: 0) {
                Text("Categories")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, -170)
                
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 16) {
                            
                            ForEach(categories) { category in
                                Button {
                                    showCategoryModal.toggle()
                                    selectedCategory = category
                                } label: {
                                    CategoryCardView (category: category)
                                }
                                .padding(.trailing)
                            }
                            
                        }.padding()
                    }
                
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
