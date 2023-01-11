//
//  CategoriesView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Categories")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, -160)
                
                ScrollView (.horizontal) {
                    HStack {
                        
                        ForEach(categories, id:\.self) { category in
                            CategoryCardView (category: category)
                        }
                    }
                }
                
                
                
                Spacer()
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
